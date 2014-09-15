---
layout: integration 
title: "Nagios (Ubuntu)"
draft: false
type: System Monitoring

---

#### Install the BigPanda Agent On Ubuntu
Connect to the host where your Nagios server is installed, and install the BigPanda agent package.

    $ echo deb http://repos.bigpanda.io/deb `lsb_release -c -s` main | sudo tee /etc/apt/sources.list.d/bigpanda.list
    $ curl https://repos.bigpanda.io/config/bigpanda.pub | sudo apt-key add -
    $ sudo apt-get update
    $ sudo apt-get install bigpanda-agent


<!-- section-separator -->

#### Configure Nagios
Open the main Nagios configuration file (usually `/usr/local/nagios/etc/nagios.cfg` or `/etc/nagios3/nagios.cfg`):

    $ sudo vim /usr/local/nagios/etc/nagios.cfg

* Set `log_rotation_method` to `d` (= daily log rotation)
* Make sure `log_archive_path` is configured (= location of old logs)
* Test that `nagios` user has write permissions to the `log_archive_path` folder

Reload the nagios service for the changes to take effect.
	
    $ sudo service nagios reload


<!-- section-separator -->

#### Configure the BigPanda Agent
Generate and edit the agent's configuration file:

    $ sudo bigpanda-agent config --token $TOKEN
    $ sudo vim /etc/bigpanda/bigpanda.conf

Activate the Nagios plugin:

	"plugins" : {
		"nagios/state" : {
			"enabled" : true,
			...
		}
	}

Configure the locations of the nagios log and object cache files:

	"nagios/state" : {
		...
		"config" : {
			"nagios_log_file" : "<LOCATION OF NAGIOS LOG>",
			"objects_cache_filename" : "<LOCATION OF NAGIOS OBJECT CACHE>"
		}
	}

* The log file is usually located at `/usr/local/nagios/var/nagios.log` or `/var/log/nagios3/nagios.log`
* The cache file is usually located at `/usr/local/nagios/var/objects.cache` or `/var/cache/nagios3/objects.cache`

Give the agent read permissions to the object cache and log files. A possible way to do it:

    $ usermod bigpanda -a -G "<GROUP OF OBJECT CACHE FILE>,<GROUP OF LOG FILE>"

<!-- section-separator -->

#### Start the BigPanda Agent

    $ sudo service bigpanda start

<!-- section-separator -->

#### Success
You should be able to see all your active Nagios alerts in OpsBox.



