---
layout: integration
title: "Slack"
type: Sharing & Ticket Management
draft: false
---

#### Create an Incoming Webhook for BigPanda
The Slack integration allows you to easily share BigPanda incidents with a channel.

* Go to `Slack Home > Slack Integrations` and choose [Incoming WebHooks](https://slack.com/services/new/incoming-webhook) *or just click on the link...*
* Click on `create a new channel` and name it BigPanda, you may set the purpose to something appropriate.
* Click on `Add Incoming WebHooks Integration`
* Copy the `Webhook URL` to the form below
* Click on `Save Settings`

<!-- section-separator -->
#### Connect Slack to BigPanda

Use the form below to configure how BigPanda should send Slack messages.

|Field|Description|Example|
|-----|-----------|-------|
|**Slack URL**|The URL of your Slack Incoming WebHook from step 2|`https://hooks.slack.com/services/ABCDEF/GHIJKLMNOP/QRSTUVWXYZ1234567890`|

<!-- app-only-start -->

<!-- include 'integrations/slack/slack' -->
*The URL field is required*

<!-- app-only-end -->

<!-- docs-only-start -->

In the BigPanda Application, you'll be able to set Slack params here.

<!-- docs-only-end -->

<!-- section-separator -->
#### Success
After the form is complete, click on "Configure Slack".
You should be ready to send incidents share with Slack.

*Note: If you want to share using other channels, you may create another Slack integration with a different system name.*
