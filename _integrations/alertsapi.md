---
layout: integration 
title: "Alerts REST API"
draft: false
---

#### Create An App Key

<!-- docs-only-start -->
Using BigPanda's Alerts API is easy. Start by creating an app key within the BigPanda Application (Integrations -> Alerts REST API). Use a separate app key per each system you integrate.

<!-- docs-only-end -->
<!-- app-only-start -->
Using BigPanda's Alerts API is easy. Start by creating an app key with the form below. Use a separate app key per each system you integrate.

<!-- include 'integrations/alertsapi/alertsapi' -->
<!-- app-only-end -->

<!-- section-separator -->
#### Make a REST Call From Your Monitoring System

The integrated system should call the Alerts API endpoint:
    
    https://api.bigpanda.io/data/v2/alerts
    

Use the following HTTP headers:
    
    Authorization: Bearer $TOKEN  
    Content-Type: application/json


The JSON payload can contain all or a subset of the following fields:

|Field|Description|Example|
|-----|-----------|-------|
|`app_key`|the application key from the first step.|`"app_key": "$STREAM_ID"`|
|`status`|the status of the alert. One of [ `ok`, `critical`, `warning`, `acknowledged` ].|`"status": "critical"`|
|`host` */`service`* */`application`* |This is the main object that caused the alert. Can be the associated host or in case a host isn't relevant, it can be a service or an application|`"host": "east-mongodb-1"`|
|`timestamp` *\*optional*|The time that the alert occured in unix format (UTC timezone). *Default: now*|`"timestamp": 1402302570`|
|`check` *\*optional*|The secondary object or subitem that caused the alert (often shown as an incident subtitle in BigPanda).|`"check": "ping"`|
|`description` *\*optional*|Additional free-text information about this alert.|`"description": "ping to east-mongodb-1 failed"`|
|`cluster` *\*optional*|The server cluster or logical host-group from which the alert was emitted. This will be used to intelligently group alerts into high-level incidents.|`"cluster": "east-mongodb"`|
|additional attributes *\*optional*|You can add any number of other JSON attributes with a string value to the payload. The additional information will be available in the BigPanda dashboard.|||

Below is an example of a full payload:

    {
      "app_key": "$STREAM_ID",
      "status": "critical",
      "host": "production-database-1",
      "timestamp": 1402302570,
      "check": "CPU overloaded",
      "description": "CPU is above upper limit (70%)",
      "cluster": "production-databases",
      "my_unique_attribute": "my_unique_value"
    }

<!-- section-separator -->
#### Create a Test Alert 

 Send a quick test alert to validate that you've got everything right. In shell, execute the following to create an alert:
 
    curl -XPOST -H "Content-Type: application/json" \
    -H "Authorization: Bearer $TOKEN" \
    https://api.bigpanda.io/data/v2/alerts \
    -d '{ "app_key": "$STREAM_ID", "status": "critical", "host": "production-database-1", "check": "CPU overloaded" }'

The alert should appear in the [BigPanda dashboard](https://a.bigpanda.io) almost instantaniously. Now close the alert by executing: 

    curl -XPOST -H "Content-Type: application/json" \
    -H "Authorization: Bearer $TOKEN" \
    https://api.bigpanda.io/data/v2/alerts \
    -d '{ "app_key": "$STREAM_ID", "status": "ok", "host": "production-database-1", "check": "CPU overloaded" }'
    
<!-- editor-only-start -->

#### Sending multiple alerts
Occasionally you might want to send more than one alert in a single API call. Doing so requires only a minor tweak to the payload's JSON:

    {
      "app_key": "$STREAM_ID",
      "alerts": [
       {
        "status": "critical",
        "host": "production-database-1",
        "timestamp": 1402302570,
        "check": "CPU overloaded",
        "description": "CPU is above upper limit (70%)",
        "cluster": "production-databases",
        "my_unique_attribute": "my_unique_value"
       }
      ]
    }
    
As can be seen in the example above, the main payload now contains only two properties:

* `alerts`: an array property that contains the list of alert you want to send to BigPanda. Each item in the list should have the same structure as illustrated above
* `app_key`: instead of specifying the `app_key` in each and every alert in the list, you should simply put it in this property.

#### Alert Lifecycle

Every alert has a clear lifecycle - it starts at some point, ends at another, and occassionaly flaps between statuses. Creating an incident in BigPanda for every status change would have caused the incident list (OpsBox page) to be extremely noisy and probably even less useful than your email inbox. To avoid that, BigPanda utilizes different rules for event deduping, merging and grouping. The purpose of the next few sections would be giving you a glimpse into the internals of BigPanda, so you, as a REST API user, could better understand how BigPanda is going to process your events.

##### Primary and Secondary properties

Intenarlly BigPanda maps certain properties of each alert to what we call **primary** and **secondary** properties. For example, in the alert payload above, the `host` property is considered **primary**, and the `check` property is considered **secondary**. These two properties are used across the board for various purposes, some of which will be discussed next.

##### Event deduping

In case we recieve two events with the same `app_key`,`timestamp`, **primary** and **secondary** properties, the last of these events will be dropped. 

##### Merging events into alerts

As single alert in BigPanda can contain one ore more events. Events are grouped into the same alert if they have the same `app_key`, **primary** and **secondary** properties. The status and description of the alert will be the status and description of the newest event (determined by the `timestamp` property). So in fact the following events:

       # First event
       {
        "status": "critical",
        "host": "production-database-1",
        "timestamp": 1402302570,
        "check": "CPU overloaded",
        "description": "CPU is above upper limit (70%)",
       }


       # Second event
       {
        "status": "warning",
        "host": "production-database-1",
        "timestamp": 1402303570,
        "check": "CPU overloaded",
        "description": "CPU is above warning limit (40%)",
       }

Will be merged into a single alert with `status` _warning_, and description _CPU is above warning limit (40%)_.

#### Grouping alerts into Incidents (a.k.a Consolidation)



#### How my alerts are going to look inside the BigPanda OpsBox?

By default, BigPanda will use the `host`/`service`/`application` property to construct the title of incidents, and the `check` property to construct their subtitle.

<!-- editor-only-end -->

