---
layout: integration 
title: "New Relic"
draft: false
type: Application Monitoring

---

<!--*Note: If you wish to forward alerts from both New Relic legacy and Alerts<sup>Beta</sup>, use a separate integration for each*-->

#### Locate Alerts Settings
In the New Relic dashboard, navigate to **Alerts<sup>Beta</sup> &gt; Notification channels**.

<!-- section-separator -->

#### Create the Channel for BigPanda

1. Under **Channels**, click **+New notification channel** and select **Webhook** as the channel type.
 
2. Fill in the form:

  * **Channel name**: `BigPanda`
  * **Base Url**: `https://api.bigpanda.io/data/integrations/newrelic?$URL_PARAMS`

3. Click **+Add custom payload** and ensure that **JSON** is selected as the payload type.

4. At the bottom of the screen, click **Create channel**.

<!-- section-separator -->

#### Test the Channel

1. After the **Channel successfully created** notification appears, scroll down and click **Send a test notification**.

2. In BigPanda, click **Incidents** in the top menu and confirm that the test message was received. 

**Note:** Since it is a test message, it won't be resolved automatically. Click **Resolve incident** to manually resolve it.

<!-- section-separator -->

#### Add the Channel to an Alert Policy in New Relic

1. In the New Relic dashboard, navigate to **Alerts<sup>Beta</sup> &gt; Alert policies**.

2. Click the policy.

3. Under **Notification channels**, click **Add notification channels** and select **Webhook &gt; BigPanda**.

