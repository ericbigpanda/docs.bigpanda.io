---
layout: integration 
title: "LogicMonitor"
draft: true
type: System Monitoring

---

#### Create a LogicMonitor Webhook Notification  

Login to LogicMonitor and enter your [webhook integrations settings](https://app.datadoghq.com/account/settings#integrations/webhooks) (Integrations -> Integrations -> Webhooks)

In the New Webhook form, fill out the following:  

* Webhook Name: `BigPanda`
* Webhook URL: `https://api.bigpanda.io/data/integrations/logicmonitor?$URL_PARAMS`
* Use custom payload (mark checkbox)
* In the custom payload, fill in the following:

Custom payload json:

		{
		  "alert_type":"##ALERTTYPE##",
		  "alert_status":"##ALERTSTATUS##",
		  "error_level":"##LEVEL##",
		  "start":"##START##",
		  "startepoch":"##STARTEPOCH##",
		  "alert_id":"##ALERTID##",
		  "service":"##SERVICE##",
		  "service_url":"##URL##",
		  "service_group":"##SERVICEGROUP##",
		  "checkpoint":"##CHECKPOINT##",
		  "device_url":"##DEVICEURL##",
		  "device_ips":"##system.ips##",
		  "device_sysinfo":"##system.sysinfo##",
		  "value":"##VALUE##",
		  "detail":"##DETAIL##",
		  "message":"##MESSAGE##",
		  "host":"##HOST##",
		  "batchjob":"##BATCHJOB##",
			"datasource":"##DATASOURCE##",
			"facility":"##FACILITY##",
			"instance":"##INSTANCE##",
			"datapoint":"##DATAPOINT##",
			"cmdline":"##CMDLINE##",
			"finish":"##FINISH##",
			"exitcode":"##EXITCODE##",
			"userdata":"##USERDATA##"
		}

<!-- section-separator -->

#### Add the BigPanda Webhook to your escalation chains

Enter the LogicMonitor's escalation chains settings, add BigPanda webhook as a recipient to warning, error and critical alerts.

<!-- section-separator -->

#### Success
Next time you'll have LogicMonitor alerts, you will be able to see them in BigPanda.
