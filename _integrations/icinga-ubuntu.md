---
layout: integration 
title: "Icinga (Ubuntu)"
draft: false
type: System Monitoring
---

#### Install the BigPanda Agent
Connect to the host where your Icinga server is installed, and install the BigPanda agent package.

    $ echo deb http://repos.bigpanda.io/deb `lsb_release -c -s` main | sudo tee /etc/apt/sources.list.d/bigpanda.list
    $ curl https://repos.bigpanda.io/config/bigpanda.pub | sudo apt-key add -
    $ sudo apt-get update
    $ sudo apt-get install bigpanda-agent

<!-- section-separator -->

#### Configure Icinga
Open the main Icinga configuration file (usually `/usr/local/icinga/etc/icinga.cfg` or `/etc/icinga/icinga.cfg`):

    $ sudo vim /usr/local/icinga/etc/icinga.cfg

* Set `log_rotation_method` to `d` (= daily log rotation)
* Make sure `log_archive_path` is configured (= location of old logs)
* Test that Icinga (usually `nagios` user) has write permissions to the `log_archive_path` folder

Reload the icinga service for the changes to take effect.
	
    $ sudo service icinga reload

<!-- section-separator -->

#### Configure the BigPanda Agent
Generate and edit the agent's configuration file:

    $ sudo bigpanda-agent config --token $TOKEN
    $ sudo vim /etc/bigpanda/bigpanda.conf

Activate the Icinga plugin:

	"plugins" : {
		"icinga/state" : {
			"enabled" : true,
			...
		}
	}

Configure the locations of the icinga log and object cache files:

	"icinga/state" : {
		...
		"config" : {
			"icinga_log_file" : "<LOCATION OF ICINGA LOG>",
			"objects_cache_filename" : "<LOCATION OF ICINGA OBJECT CACHE>"
		}
	}
    
* The log file is usually located at `/usr/local/icinga/var/icinga.log` or `/var/log/icinga/icinga.log`
* The cache file is usually located at `/usr/local/icinga/var/objects.cache` or `/var/cache/icinga/objects.cache`

#### Start the BigPanda Agent

    $ sudo service bigpanda start

<!-- section-separator -->

#### Success
You should be able to see all your active Icinga alerts in the Incidents tab.


