---
layout: integration 
title: "Datadog"
draft: true
type: System Monitoring

---

#### Create a Datadog Webhook Notification  

Login to Datadog and enter your [webhook integrations settings](https://app.datadoghq.com/account/settings#integrations/webhooks) (Integrations -> Integrations -> Webhooks)

In the New Webhook form, fill out the following:  

* Webhook Name: `BigPanda`
* Webhook URL: `https://api.bigpanda.io/data/integrations/datadog?$URL_PARAMS`
* Use custom payload (mark checkbox)
* In the custom payload, fill in the following:

Custom payload json:

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
       "alert_metric": "$ALERT_METRIC"
     }

* Ensure that the "Encode as form" checkbox is not checked

<!-- section-separator -->

#### Add the BigPanda Webhook to your alerts

Enter the Datadog metrics section, specifically the [Manage Monitors](https://app.datadoghq.com/monitors) section.
Edit each monitor, and add the BigPanda Webhook that you created to the last part of the edit Monitor screen ("Notify your team" section)
 
<!-- section-separator -->

#### Success
Next time you'll have Datadog alerts, you will be able to see them in BigPanda.
