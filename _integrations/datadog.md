---
layout: integration 
title: "Datadog"
draft: false
type: System Monitoring

---

#### Create a Datadog Webhook Notification  

1\. Log in to Datadog and go to the [webhook integrations settings](https://app.datadoghq.com/account/settings#integrations/webhooks) (**Integrations > Integrations > Webhooks**).

2\. In the **New Webhook** form, enter the following information:  

* **Webhook Name:** `BigPanda`
* **Webhook URL:** `https://api.bigpanda.io/data/integrations/datadog?$URL_PARAMS`
* **Use custom payload:** Select the check box.
* **Custom payload:** Enter the following JSON payload:

        {
           "id":"$ID",
           "title":"$EVENT_TITLE",
           "last_updated": "$LAST_UPDATED",
           "date": "$DATE",
           "event_type":"$EVENT_TYPE",
           "body":"$EVENT_MSG",
           "link": "$LINK",
           "priority": "$PRIORITY",
           "alert_status": "$ALERT_STATUS",
           "aggreg_key": "$AGGREG_KEY",
           "alert_transition": "$ALERT_TRANSITION",
           "tags":  "$TAGS",
           "alert_metric": "$ALERT_METRIC",
           "alert_query": "$ALERT_QUERY"
        }


* Ensure that the **Encode as form** check box is not selected.

<!-- section-separator -->

#### Add the BigPanda Webhook to Your Alerts

1\. In Datadog, go to the [Manage Monitors](https://app.datadoghq.com/monitors) page (**Monitors > Manage Monitors**).

2\. For each monitor, edit the monitor and add the **BigPanda** webhook in the **Notify your team** section.
 
<!-- section-separator -->

#### Success
The next time Datadog generates an alert, you will see it in the Incidents Dashboard.
