---
layout: integration 
title: "OpsView (CentOS)"
draft: false
type: System Monitoring

---

#### Install the BigPanda Agent
Connect to the host where your OpsView server is installed, and install the BigPanda agent package.

    $ sudo wget http://repos.bigpanda.io/config/bigpanda.repo -O /etc/yum.repos.d/bigpanda.repo
    $ sudo yum install bigpanda-agent

<!-- section-separator -->

#### Configure OpsView
Open the main OpsView configuration file (usually `/usr/local/nagios/etc/nagios.cfg`):

	$ sudo vim /usr/local/nagios/etc/nagios.cfg

* Set `log_rotation_method` to `d` (= daily log rotation)
* Make sure `log_archive_path` is configured (= location of old logs)
* Test that OpsView (usually `nagios` user) has write permissions to the `log_archive_path` folder

Reload the OpsView service for the changes to take effect.
	
    $ sudo service opsview reload


<!-- section-separator -->

#### Configure the BigPanda Agent
Generate and edit the agent's configuration file:

    $ sudo bigpanda-agent config --token $TOKEN
    $ sudo vim /etc/bigpanda/bigpanda.conf

Activate the OpsView plugin:

	"plugins" : {
		"opsview/state" : {
			"enabled" : true,
			...
		}
	}

Configure the locations of the OpsView log and object cache files:

	"opsview/state" : {
		...
		"config" : {
			"opsview_log_file" : "<LOCATION OF OPSVIEW LOG>",
			"objects_cache_filename" : "<LOCATION OF OPSVIEW OBJECT CACHE>"
		}
	}
    
* The log file is usually located at `/usr/local/nagios/var/nagios.log`
* The cache file is usually located at `/usr/local/nagios/var/objects.cache`

#### Start the BigPanda Agent

    $ sudo initctl start bigpanda

<!-- section-separator -->

#### Success
You should be able to see all your active OpsView alerts in the Incidents tab.


