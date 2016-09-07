---
layout: integration
title: "Webhook"
type: Sharing & Ticket Management
draft: false
---

#### Configure the Webhook
Configure the webhook receiver to accept BigPanda requests, if applicable. Then, use the form below to specify the callback URL and authentication details.

1. Enter the full **Webhook URL** where BigPanda will send the request.
  For example: `https://my-api-endpoint.com/events`
2. (Optional) To add custom a HTTP header, click the plus and add a key-value pair. For example:
  * **Header key**: `my-api-key`
  * **Header value**: `XIpjpJPLRN79LIsAa9TdA3XnxS4VfESv65NqqH8G`
3. Repeat step 2 for each additional header you want to add to the request.

**Note:** For more information, see Notifications Webhook.

<!-- app-only-start -->

<!-- include 'integrations/webhook/webhook' -->

<!-- app-only-end -->

<!-- section-separator -->
#### Success
After the form is complete, click **Configure Webhook**. You are ready to share incidents using a Webhook.
