---
layout: integration 
title: "New Relic"
draft: false
type: Application Monitoring

---



#### Locate Alerts Settings
In the New Relic dashboard, navigate to **Alerts<sup>Beta</sup> &gt; Notification channels**.

<!-- section-separator -->

#### Create the Channel for BigPanda

1\. Under **Channels**, click **+New notification channel** and select **Webhook** as the channel type.
 
2\. Fill in the form:

* **Channel name**: `BigPanda` <br>
* **Base Url**: `https://api.bigpanda.io/data/integrations/newrelic?$URL_PARAMS`

3\. Click **+Add custom payload** and ensure that **JSON** is selected as the payload type.

4\. At the bottom of the screen, click **Create channel**.

<!-- section-separator -->

#### Test the Channel

1\. After the **Channel successfully created** notification appears, scroll down and click **Send a test notification**.

2\. In BigPanda, click **Incidents** in the top menu and confirm that the test message was received.

**Note:** Since it is a test message, it won't be resolved automatically. Click **Resolve incident** to manually resolve it.

<!-- section-separator -->

#### Add Alert Policies to the Channel in New Relic

1\. In the New Relic dashboard, navigate to **Alerts<sup>Beta</sup> &gt; Notification channels**.

2\. Under **Channels**, select the **BigPanda** channel.

3\. Under **Alert policies**, click **Add alert policies**.

4\. Add all of your policies to the **BigPanda** channel, and then click **Update channel**.

**Note:** You must set the incident preference of each policy to **By condition and target**. Navigate to **Alerts<sup>Beta</sup> &gt; Alert policies**. The incident preference is set per alert policy.

![media/NewRelicIncidentPreference.png](/media/NewRelicIncidentPreference.png)

