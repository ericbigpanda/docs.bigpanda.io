---
layout: integration 
title: "New Relic"
draft: false
type: Application Monitoring

---

#### Locate Alerts Settings
In the New Relic dashboard, navigate to **Notification channels**.

<!-- section-separator -->

#### Create Channel for BigPanda
1\. Under **Channels**, Click **Create a notification channel** and select **Webhook** as the channel type.

2\. Fill in the form:

* **Channel Name**: `BigPanda`
* **Base URL**: `https://api.bigpanda.io/data/integrations/newrelic?$URL_PARAMS`

3\. Click **Add Custom Payload** scroll to the bottom and ensure that **JSON** is selected as the payload type.

4\. At the bottom of the screen, click **Create channel**, and click **Integrate with Webhooks**.

<!-- section-separator -->

#### Test the Channel

1\. After the **Channel successfully created** notification appears. Choose the new notification channel, scroll down and click **Send a test notification**.

2\. In BigPanda, click **Incidents** in the top menu and confirm that the test message was received.

**Note:** Since it is a test message, it won't be resolved automatically. Click **Resolve incident** to manually resolve it.

<!-- section-separator -->

#### Add Alert Policies to the Channel in New Relic

1\. In the New Relic dashboard, navigate to **Alerts policy > Add alert policy**.

2\. After **Policy successfully created** new policy appears.

3\. Choose your policy and add all of your conditions by ** +Add new condition**.

3\. Under **Alerts policy** Choose again your policy, and click on **Notification channel > Add notification channels**.

4\. Choose **Webhook > BigPanda**, and click **Update policy**.

**Note:** You must set the incident preference of each policy to **By condition and entity**. Navigate to **Alerts > Alert policies**. The incident preference is set per alert policy.

Choose policy and then click on ![media/NewRelicIncidentPreference.png](/media/NewRelicIncidentPreference.png), and set the incident preference.