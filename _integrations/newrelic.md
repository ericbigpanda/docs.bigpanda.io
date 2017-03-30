---
layout: integration 
title: "New Relic"
draft: false
type: Application Monitoring

---

#### Locate Alerts Settings
In the New Relic dashboard, navigate to **Notification channels**.

For more information, see the [legacy alerting system documentation](https://docs.newrelic.com/docs/alerts/new-relic-alerts/getting-started/alerting-new-relic).

<!-- section-separator -->

#### Create Channel for BigPanda
1\. Under **Channels**, Click **Create a notification channel** and select **Webhook** as the channel type.

2\. Fill in the form:

* **Channel Name**: `BigPanda`
* **Base URL**: `https://api.bigpanda.io/data/integrations/newrelic?$URL_PARAMS`

3\. Click **Add Custom Payload**, scroll to the bottom and ensure that **JSON** is selected as the payload type.

4\. At the bottom of the screen, click **Create channel > Integrate with Webhooks**.

<!-- section-separator -->

#### Test the Channel

1\. Under **Alerts > Notification channels**, choose your notification channel, scroll down and click **Send a test notification**.

2\. In BigPanda, click **Incidents** in the top menu and confirm that the test message was received.

**Note:** Since it is a test message, it won't be resolved automatically. Click **Resolve incident** to manually resolve it.

<!-- section-separator -->

#### Create Alert Policy

1\. In the New Relic dashboard, navigate to **Alerts policy > Add alert policy**.

2\. Under **Alerts policy**, choose your policy and add all of your conditions by using **Add new condition**.

<!-- section-separator -->

#### Add Alert Policies to the Channel in New Relic

1\. Under **Alerts policy**, choose your policy and click **Notification channel > Add notification channels**.

2\. Choose **Webhook > BigPanda**, and click **Update policy**.

**Note:** You must set the incident preference of each policy to **By condition and entity**.

For each alert policy, select the policy, and then set the incident preference. ![media/NewRelicIncidentPreference.png](/media/NewRelicIncidentPreference.png)