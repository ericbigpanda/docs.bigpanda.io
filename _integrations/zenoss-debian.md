---
layout: integration 
title: "Zenoss (Debian)"
draft: false
type: System Monitoring

---

<!-- docs-include _integrations/agent-common/install/generic.md:::SOURCE_SYSTEM_NAME=Zenoss:::PLATFORM_NAME=Debian -->

<!-- section-separator -->

#### Configure the BigPanda Agent
Generate and edit the agent's configuration file:

    $ sudo bigpanda-agent config --token $TOKEN
    $ sudo vim /etc/bigpanda/bigpanda.conf

Activate the Zenoss plugin:

	"plugins" : {
		"zenoss/api" : {
			"enabled" : true,
                    "app_key" : "$STREAM_ID"
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
	
<!-- section-separator -->

<!-- docs-include _integrations/agent-common/start-and-summary/generic.md:::SOURCE_SYSTEM_NAME=Zenoss:::PLATFORM=debian -->
