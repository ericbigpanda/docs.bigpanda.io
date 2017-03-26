---
layout: integration 
title: "New Relic"
draft: false
type: Application Monitoring

---

#### Locate Alerts Settings
In the New Relic dashboard, navigate to **Notification channels > Channels tab**.

<!-- section-separator -->

#### Create Channel for BigPanda
Click **Create a notification channel** and select a channel type **Webhook**. Fill in the form:

* **Channel Name**: `BigPanda`
* **Base URL**: `https://api.bigpanda.io/data/integrations/newrelic?$URL_PARAMS`
* Click **Add Custom Payload** look and the bottom and ensure that **JSON** is selected as the payload type.
* At the bottom of the screen, click **Create channel**.

Click **Integrate with Webhooks**.

<!-- section-separator -->

#### Test the Channel

1\. After the **Channel successfully created** notification appears. click on the notification, scroll down and click **Send a test notification**.

2\. In BigPanda, click **Incidents** in the top menu and confirm that the test message was received.

**Note:** Since it is a test message, it won't be resolved automatically. Click **Resolve incident** to manually resolve it.

<!-- section-separator -->

#### Add Alert Policies to the Channel in New Relic

1\. In the New Relic dashboard, navigate to **Alerts policy**, click **Add alert policy**.

2\. After **Policy successfully created** new policy appears. click on your policy, at the bottom click on **create a condition** and then define your condition.

3\. Click again on your policy, and click on **Notification channel**. Click on **Add notification channels** and choose **Webhook**.

4\. Add **BigPanda** channel, and then click **Update policy**

**Note:** You must set the incident preference of each policy to **By condition and entity**. Navigate to **Alerts > Alert policies**. The incident preference is set per alert policy.

Choose policy and then click on ![media/NewRelicIncidentPreference.png](/media/NewRelicIncidentPreference.png), and set the incident preference.