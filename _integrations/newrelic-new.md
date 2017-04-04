---
layout: integration 
title: "New Relic"
draft: false
type: Application Monitoring

---



#### Locate Alerts Settings
In the New Relic dashboard, navigate to **Alerts New > Notification channels**.

For more information, see the [New Relic Alerts documentation](https://docs.newrelic.com/docs/alerts/new-relic-alerts/getting-started/introduction-new-relic-alerts).

<!-- section-separator -->

#### Create the Channel for BigPanda

1\. Under **Notification channels > Channels**, click **New notification channel** and select **Webhook** as the channel type.

2\. Fill in the form:

* **Channel name**: `BigPanda`
* **Base URL**: `https://api.bigpanda.io/data/integrations/newrelic?$URL_PARAMS`

3\. Click **Add custom payload** and ensure that **JSON** is selected as the payload type.

4\. At the bottom of the screen, click **Create channel**.

<!-- section-separator -->

#### Test the Channel

1\. Under **Alerts New > Notification channels**, choose the **BigPanda channel** you just created, scroll down and click **Send a test notification**.

2\. In BigPanda, click **Incidents** in the top menu and confirm that the test message was received.

**Note:** Since it is a test message, it won't be resolved automatically. Click **Resolve incident** to manually resolve it.

<!-- section-separator -->

#### Add BigPanda Notification to a New Alert Policy

1\. In the New Relic dashboard, navigate to **Alerts New > Alert policies**.

2\. Click **New alert policy**.

3\. Add all of your conditions by using **Create condition** or **Add new condition**.

4\. Under **Notification channels > Add notification channels**, choose **Webhook > BigPanda** channel, and click **Update policy**.

<!-- section-separator -->

#### Add BigPanda Notification to an Existing Alert Policy

1\. Under **Alerts policy**, choose your policy and click **Notification channels > Add notification channels**.

2\. Choose **Webhook > BigPanda** channel, and click **Update policy**.

**Note:** You must set the incident preference of each policy to **By condition and target**. Navigate to **Alerts New > Alert policies**.

For each alert policy, select the policy, and then set the incident preference. ![media/NewRelicIncidentPreference.png](/media/NewRelicIncidentPreference.png)


