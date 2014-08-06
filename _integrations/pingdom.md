---
layout: integration 
title: "Pingdom Integration Guide"
draft: true
---

#### Register a Pingdom API Application
Log in to Pingdom with your **owner user**.

Go to [Sharing > Pingdom API > Register An Application](https://my.pingdom.com/account/appkeys/new), provide the following information to the form:

* **Application Name:** `BigPanda`
* **Description:** `BigPanda Integration`
* **Application Type:** `Public`
* **Platform:** `Web`

Click on `Save Changes`, copy the provided **Application Key**.
<!-- section-separator -->
#### Create Pingdom Contact
Navigate to [Alerting > Contacts > Add New Contact](https://my.pingdom.com/contacts/new) and provide the exact information to the form:

* **Name:** `BigPanda Integration`
* **Email:** `$EMAIL`

Click on `Create New Contact`
<!-- section-separator -->
#### Enter Pingdom Credentials
Please enter the credentials of the owner user that is logged in.  
We need your credentials in order to sync your Pingdom checks.
<!-- include 'integrations/pingdom/pingdom' -->

<!-- section-separator -->
#### Success
Next time you have Pingdom alerts, you will able to see them in OpsBox.
