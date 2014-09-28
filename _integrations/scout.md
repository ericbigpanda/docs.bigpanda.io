---
layout: integration 
title: "Scout"
draft: false
type: System Monitoring

---

#### Create a Scout Webhook Notification  

Login to Scout and in *Account > Notifications* click on *Add Webhook*.  

In the New Webhook form, fill out the following:  

* Webhook Name: `BigPanda`
* Webhook URL: `https://api.bigpanda.io/data/integrations/scout?$URL_PARAMS`


<!-- section-separator -->
#### Assign the Webhook to Notification Groups

The new Webhook needs to be assigned to existing Notification Groups. Do the following for each Notification Group:

<!-- docs-only-start -->
* Click on the wrench icon (![media/wrench.png](/media/wrench.png)) 
{: .not-responsive}
<!-- docs-only-end -->
<!-- app-only-start -->
* Click on the wrench icon (![media/wrench.png](/media/wrench.png)) 
<!-- app-only-end -->


 
* Under Webhook, select *BigPanda*

<!-- section-separator -->

#### Success
Next time you'll have Scout alerts, you will be able to see them in BigPanda.
