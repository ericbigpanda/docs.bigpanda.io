---
layout: integration 
title: "New Relic"
draft: false
type: Application Monitoring

---

#### Locate Alerts Settings
In the *New Relic* dashboard, navigate to **Alerts Beta > Notification channels**

<!-- section-separator -->

#### Create Channel for BigPanda
1.  Under the Channels tab, click on `+New notification channel` and select `Webhook` as the channel type. Fill in the form:

* **Channel name**: `BigPanda`
* **Base Url**: `https://api.bigpanda.io/data/integrations/newrelic?$URL_PARAMS`

2.  Click on `+Add custom payload` and ensure that JSON is selected as the Payload Type.

3.  At the bottom of the screen, click on `Create channel`.

<!-- section-separator -->

#### Test the Channel
1.  After seeing the "Channel successfully created" popup, scroll down and click on `Send a test notification`
2.  In BigPanda, click `Incidents` in the top menu and check that the test message was received.
3.  Click `Resolve incident` to manually resolve it. Note that since it is a test message, it won't be resolved on its own.

<!-- section-separator -->

#### Add the Channel to an Alert Policy in New Relic

1.  In the *New Relic* dashboard, navigate to **Alerts Beta > Notification channels**
2.  Click on the policy. Under the Notification channels tab, click on `Add notification channels` and select **BigPanda** under Webhook.

