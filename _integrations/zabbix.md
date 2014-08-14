---
layout: integration 
title: "Zabbix"
draft: false
type: Agent

---

#### Install the BigPanda Agent
Connect to the host where your Nagios server is installed, and install the BigPanda agent package.

**RedHat / CentOS:**

    $ sudo wget http://repos.bigpanda.io/config/bigpanda.repo -O /etc/yum.repos.d/bigpanda.repo
    $ sudo yum install bigpanda-agent

**Debian / Ubuntu:**

    $ echo deb http://repos.bigpanda.io/deb `lsb_release -c -s` main | sudo tee /etc/apt/sources.list.d/bigpanda.list
    $ curl https://repos.bigpanda.io/config/bigpanda.pub | sudo apt-key add -
    $ sudo apt-get update
    $ sudo apt-get install bigpanda-agent

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
	

#### Start the BigPanda Agent

**RedHat / CentOS:**

    $ sudo initctl start bigpanda

**Debian / Ubuntu:**

    $ sudo service bigpanda start

Your Zabbix alerts are now being streamed to BigPanda.

<!-- section-separator -->

#### Success
You should be able to see all your active Zabbix alerts in OpsBox.
