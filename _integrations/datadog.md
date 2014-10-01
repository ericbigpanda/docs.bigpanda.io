---
layout: integration 
title: "Datadog"
draft: true
type: System Monitoring

---

#### Create a Datadog Webhook Notification  

Login to Datadog and in enter your [webhook integrations settings](https://app.datadoghq.com/account/settings#integrations/webhooks)

In the New Webhook form, fill out the following:  

* Webhook Name: `BigPanda`
* Webhook URL: `https://api.bigpanda.io/data/integrations/datadog?$URL_PARAMS`
* Use custom payload (mark checkbox)
* In the custom payload, fill in the following json:

```
{
    "id":"$ID",
    "title":"$EVENT_TITLE",
    "last_updated": "$LAST_UPDATED",
    "date": "$DATE",
    "event_type":"$EVENT_TYPE",
    "body":"$EVENT_MSG",
    "org":{
        "id":"$ORG_ID",
        "name":"$ORG_NAME"
    },
    "link": "$LINK",
    "priority": "$PRIORITY",
    "alert_status": "$ALERT_STATUS",
    "aggreg_key": "$AGGREG_KEY",
    "alert_transition": "$ALERT_TRANSITION",
    "tags":  "$TAGS",
    "alert_metric": "$ALERT_METRIC"
}
```

* Ensure that *'Encode as form'* is **NOT** checked

<!-- section-separator -->

#### Add the BigPanda Webhook to your alerts

Enter the Datadog metrics section, specifically the [Manage Monitors](https://app.datadoghq.com/monitors) section.
Edit your alert, and add the BigPanda Webhook you created to the 5th part ('*Notify your team*')
 
<!-- section-separator -->

#### Success
Next time you'll have Datadog alerts, you will be able to see them in BigPanda.
