---
layout: integration 
title: "Pingdom"
draft: false

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
<!-- app-only-start -->
#### Enter Pingdom Credentials
Please enter the credentials of the owner user that is logged in.  
We need your credentials in order to sync your Pingdom checks.
<!-- include 'integrations/pingdom/pingdom' -->
<!-- app-only-end -->
<!-- docs-only-start -->
#### The next step is available in the BigPanda Application
Enter the BigPanda Application to enter your Pingdom credentials, needed to finish the integration.

<!-- docs-only-end -->

<!-- section-separator -->
#### Success
Next time you have Pingdom alerts, you will able to see them in OpsBox.
