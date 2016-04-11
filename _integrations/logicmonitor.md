---
layout: integration
title: "LogicMonitor"
draft: false
type: System Monitoring
---

#### Create a LogicMonitor Webhook Notification

Login to LogicMonitor and go to "Settings" > "Integrations" > "Add" > "Custom HTTP Delivery"

* Name: 'BigPanda'
* Select ״Use different URLs or data formats to notify on various alert activity״ (Important for Acknowledge feature)
* Make sure "New Alerts" and "Cleared" are checked
* HTTP Method: HTTP Post
* URL for New and Cleared alerts: `https://api.bigpanda.io/data/integrations/logicmonitor?$URL_PARAMS`
* Alert Data: choose "raw" and format: "JSON"

Fill payload with:

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
      "device_ips":"##SYSTEM.IPS##",
      "device_sysinfo":"##SYSTEM.SYSINFO##",
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


* Make sure the "Include an ID provided in HTTP response when updating alert status" is unchecked

To enable acknowledged alerts please do the following:
* Manage the BigPanda existing integration in logicmonitor
* Press the plus (+) button
* Choose the Acknowledged checkbox
* Webhook URL for Acknowledged alerts: `https://api.bigpanda.io/data/integrations/logicmonitor?$URL_PARAMS&ack=true`
* Use the same payload given above
<!-- section-separator -->

#### Add the BigPanda Webhook to your escalation chains

* Enter the LogicMonitor's escalation chains settings, add BigPanda webhook as a recipient. - should i tell them to add us to default or let them manage that relatively to their configuration.
* Update the Alert Rules to use the relevant escalation chain to warning, error, and critical.

<!-- section-separator -->

#### Success
Next time you'll have LogicMonitor alerts, you will be able to see them in BigPanda.
