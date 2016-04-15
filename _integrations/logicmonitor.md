---
layout: integration
title: "LogicMonitor"
draft: false
type: System Monitoring
---

#### Create a LogicMonitor Webhook Integration

1\. Log in to LogicMonitor and go to **Settings > Integrations > Add > Custom HTTP Delivery**.

2\. Fill in the following information.

* **Name**: `BigPanda`
* **Use different URLs or data formats to notify on various alert activity**: select this option. You must use a different URL to enable support for acknowledged alerts.
* **New Alerts** and **Cleared**: select the check boxes.
* **HTTP Method**: `HTTP Post`
* **URL for New and Cleared alerts**: `https://api.bigpanda.io/data/integrations/logicmonitor?$URL_PARAMS`
* **Alert Data**: select the **Raw** option and the **JSON** format. Then, enter the following information in the payload field.


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


* **Include an ID provided in HTTP response when updating alert status**: clear the check box.

3\. Click **Save**.

### Enable Support for Acknowledged Alerts

1\. Edit the LogicMonitor webhook integration that you created for BigPanda.

2\. Click the **Plus** (**+**) icon.

3\. Select the **Acknowledged** check box, and then fill in the following information.

* **Webhook URL for Acknowledged alerts**: `https://api.bigpanda.io/data/integrations/logicmonitor?$URL_PARAMS&ack=true`
* **Alert Data**: enter the same payload as in the previous step.
<!-- section-separator -->

#### Add the BigPanda Webhook to your Escalation Chains

1\. Go to the LogicMonitor escalation chains settings.

2\. Add the BigPanda webhook as a recipient. - should i tell them to add us to default or let them manage that relatively to their configuration.

3\. Update the Alert Rules to use the relevant escalation chain to warning, error, and critical.

<!-- section-separator -->

#### Success
Th next time LogicMonitor generates an alert, you will see it in BigPanda.
