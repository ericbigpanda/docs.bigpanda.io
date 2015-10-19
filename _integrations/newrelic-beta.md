---
layout: integration 
title: "New Relic"
draft: false
type: Application Monitoring

---

<!--*Note: If you wish to forward alerts from both New Relic legacy and Alerts<sup>Beta</sup>, use a separate integration for each*-->

#### Locate Alerts Settings
In the *New Relic* dashboard, navigate to **Alerts<sup>Beta</sup> <span>&#8594;</span> Notification channels**

<!-- section-separator -->

#### Create Channel for BigPanda

Under *Channels*, click on `+New notification channel` and select `Webhook` as the channel type. Fill in the form:

* **Channel name**: `BigPanda`
* **Base Url**: `https://api.bigpanda.io/data/integrations/newrelic?$URL_PARAMS`

Click on `+Add custom payload` and ensure that JSON is selected as the Payload Type.

At the bottom of the screen, click on `Create channel`.

<!-- section-separator -->

#### Test the Channel

After seeing the *Channel successfully created* notification, scroll down and click on `Send a test notification`

In **BigPanda**, click `Incidents` in the top menu and check that the test message was received. *Note that since it is a test message, it won't be resolved on its own. Click `Resolve incident` to manually resolve it.*

<!-- section-separator -->

#### Add the Channel to an Alert Policy in New Relic

In the *New Relic* dashboard, navigate to **Alerts<sup>Beta</sup> <span>&#8594;</span> Alert policies**

Click on the policy. Under *Notification channels*, click on `Add notification channels` and select  `Webhook` <span>&#8594;</span> `BigPanda`.

