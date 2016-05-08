---
layout: integration
title: "Pingdom"
draft: false
type: Application Monitoring

---

#### Create an Integration for BigPanda

1\. In Pingdom, go to [Integrations > Integrations](https://my.pingdom.com/integrations/settings).

2\. Click **Add integration**, and add a new integration by filling in the fields:

* **Type**: Select **Webhook**
* **Name**: `BigPanda Integration`
* **URL**: `https://api.bigpanda.io/data/integrations/pingdomwebhook?$URL_PARAMS`

Make sure **Active** is selected (default).

3\. Click **Save integration**.

<!-- section-separator -->

#### Connect Integration to Pingdom Checks

1\. Under **Monitoring**, open the settings of each Pingdom check you would like to connect with BigPanda by clicking **Edit**.

2\. Under **Connect Integrations**, select the **BigPanda Integration**.

3\. Click **Test** next to the **BigPanda Integration** to test the integration. Note that the alert will not appear in BigPanda if the status of the test alert is 'Ok'.

4\. Click **Modify Check**.


<!-- section-separator -->

#### Success!

The next time Pingdom generates an alert, you will see it in the Incident Dashboard.
