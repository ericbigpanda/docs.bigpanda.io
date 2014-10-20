---
layout: integration 
title: "Zenoss (CentOs)"
draft: false
type: System Monitoring

---
#### Install the BigPanda Agent
Connect to the host where your Zenoss server is installed, and install the BigPanda agent package.

    $ sudo wget http://repos.bigpanda.io/config/bigpanda.repo -O /etc/yum.repos.d/bigpanda.repo
    $ sudo yum install bigpanda-agent

<!-- section-separator -->

#### Configure the BigPanda Agent
Generate and edit the agent's configuration file:

    $ sudo bigpanda-agent config --token $TOKEN
    $ sudo vim /etc/bigpanda/bigpanda.conf

Activate the Zenoss plugin:

	"plugins" : {
		"zenoss/api" : {
			"enabled" : true,
			...
		}
	}


Make sure the host, the user and the password for Zenoss are configured correctly:  
*Note: You may want to create a dedicated user for BigPanda, the required role is `ZenUser`.*

	"zenoss/api": {
		...
		"config": {
			"host": "http://localhost:8080",
			"user": "<username>",
			"password": "<password>"
		}
	}
	

#### Start the BigPanda Agent

    $ sudo initctl start bigpanda

<!-- section-separator -->

#### Success
You should be able to see all your active Zenoss alerts in the Incidents tab.

