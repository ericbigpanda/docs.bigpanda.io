---
layout: integration 
title: "New Relic"
draft: false
type: Application Monitoring

---

#### Locate Alerts Settings
In the New Relic dashboard, navigate to [Alerts > Channels and groups](https://rpm.newrelic.com/notification_channels).

<!-- section-separator -->

#### Create Channel for BigPanda
Click **Create channel** and select **Webhook**. Fill in the form:

* **Webhook Name**: `BigPanda`
* **Webhook URL**: `https://api.bigpanda.io/data/integrations/newrelic?$URL_PARAMS`
* **Notification level**: Select **All critical events** from the drop-down menu

Click **Integrate with Webhooks**.

<!-- section-separator -->

#### Apply Webhook to All Policies

1\. Navigate to [Account settings > Integrations > API keys](https://rpm.newrelic.com/integrations?page=api_keys).

2\. Click **Create REST API key**.

<!-- app-only-start -->
3\. Copy the **Key** into the form below.

<!-- include 'integrations/newrelic/newrelic' -->
<!-- app-only-end -->
<!-- docs-only-start -->

Within the BigPanda Application use the interactive New Relic integration guide to enter your API Key. It will create the New Relic WebHook for you.

<!-- docs-only-end -->

<!-- section-separator -->

#### Test the webhook

A test message should arrive in a few moments. In BigPanda, click **Incidents** in the top menu and confirm that the test message was received. 

**Note:** Since it's a test message, it won't be resolved automatically. Click **Resolve incident** to manually resolve it.

