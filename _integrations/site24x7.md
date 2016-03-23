---
layout: integration
title: "Site24x7"
draft: false
type: Application Monitoring

---

#### Create an Action for BigPanda

1\. In Site24x7, go to [Admin > Configuration Profiles > Actions](https://www.site24x7.com/app/client#/admin/configuration-profiles/actions).

2\. Click **Add Action**, and add a new action by filling in the fields:

* **Display Name**: `BigPanda`
* **URL**: `https://api.bigpanda.io/data/integrations/site24x7?$URL_PARAMS`
* **TimeOut**: `30 secs`
* **HTTP Method**: Select **POST**

Select **Send Incident Parameters** and **Post as JSON**

3\. Click **Save**.

<!-- section-separator -->

#### Connect Action to Site24x7 Monitors

1\. Go to [Admin > Inventory > Monitors](https://www.site24x7.com/app/client#/admin/inventory/monitors).

2\. Enter the edit mode of each monitor you would like to connect with BigPanda.

3\. Under **Configuration Profiles > Actions**, select **BigPanda** and **Execute on any status change**. Make sure to click **Add**. 

4\. Click **Save**.


<!-- section-separator -->

#### Success!

The next time Site24x7 generates an alert, you will see it in the Incident Dashboard.
