---
layout: integration 
title: "Scout"
draft: false
type: System Monitoring

---

#### Create a BigPanda Application Key

Start by creating an app key for a Scout account with the form below. Use a separate app key per each Scout account you integrate. 

*Tip: if you have only one Scout account, you might want to click on `Generate App Key` without providing a name.*

<!-- app-only-start -->
<!-- include 'integrations/multiple/multiple' -->
<!-- app-only-end -->
<!-- docs-only-start -->

In the BigPanda Application, there's a Form that you can enter the Scout account name.

<!-- docs-only-end -->

<!-- section-separator -->
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
