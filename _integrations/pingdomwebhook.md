---
layout: integration
title: "Pingdom"
draft: false
type: Application Monitoring

---

#### Locate Pingdom Integrations
In Pingdom, go to [Integrations > Integrations](https://my.pingdom.com/reports/integration/settings).

<!-- section-separator -->

#### Create an Integration for BigPanda

1\. Click **Add integration**, and add a new integration by filling in the fields:

* **Type**: Select **Webhook**
* **Name**: `BigPanda Integration`
* **URL**: `https://api.bigpanda.io/data/integrations/pingdomwebhook?$URL_PARAMS`

Make sure **Active** is selected (default).

2\. Click **Save integration**.

<!-- section-separator -->

#### Connect Integration to Pingdom Checks

1\. Under **Monitoring**, open the settings of each Pingdom check you would like to connect with BigPanda by clicking **Edit**.

2\. Select the **BigPanda Integration** and click **Modify Check**.

**Note:** The **Test** button next to the integration may not work, although the integration is configured properly. Pingdom may send a resolved test alert which will not appear in BigPanda.

<!-- section-separator -->

#### Success!

The next time Pingdom generates an alert, you will see it in the Incident Dashboard.
