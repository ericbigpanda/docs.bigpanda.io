---
layout: integration 
title: "Zabbix (Ubuntu)"
draft: false
type: System Monitoring

---

<!-- docs-include _integrations/agent-common/install/generic.md:::SOURCE_SYSTEM_NAME=Zabbix:::PLATFORM_NAME=Ubuntu -->

<!-- section-separator -->

#### Configure Zabbix
Execute the following command to configure Zabbix:

	$ sudo bigpanda-zabbix-config -t $TOKEN

Please follow the on-screen instructions.
You will be prompted for your Zabbix admin password.

<!-- section-separator -->

#### Configure the BigPanda Agent
Generate and edit the agent's configuration file:

    $ sudo bigpanda-agent config --token $TOKEN
    $ sudo vim /etc/bigpanda/bigpanda.conf

Activate the Zabbix plugin:

	"plugins" : {
		"zabbix/api" : {
			"enabled" : true,
                    "app_key" : "$STREAM_ID" 
			...
		}
	}


Make sure the host url for Zabbix is configured correctly:

	"zabbix/api": {
		...
		"config": {
			"host": "http://localhost/zabbix",
			...
		}
	}
	
<!-- section-separator -->

<!-- docs-include _integrations/agent-common/start-and-summary/generic.md:::SOURCE_SYSTEM_NAME=Zabbix:::PLATFORM=ubuntu -->
