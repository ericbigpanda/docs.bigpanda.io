---
layout: integration 
title: "Alerts REST API Bash Wrapper"
type: API
draft: false
---

#### Make a REST Call From Your Monitoring System - Bash

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
    
<!-- docs-only-start -->

#### Sending multiple alerts
Occasionally you might want to send more than one alert in a single API call. Doing so requires only a minor tweak to the payload's JSON:

    {
      "app_key": "123",
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

* `alerts`: an array property that contains the list of alert you want to send to BigPanda. Each item in the list should have the same structure as illustrated above.
* `app_key`: instead of specifying the `app_key` in each and every alert in the list, you should simply put it in this property.

#### Alert Lifecycle

Every alert has a clear lifecycle - it starts at some point, ends at another, and occasionally flaps between statuses. Creating an incident in BigPanda for every status change would have caused the incident list (OpsBox page) to be extremely noisy and probably even less useful than your email inbox. To avoid that, BigPanda utilizes different rules for event deduping, merging and grouping. The purpose of the next few sections would be giving you a glimpse into the internals of BigPanda, so you, as a REST API user, could better understand how BigPanda is going to process your events.

##### Primary and Secondary properties

Internally BigPanda maps certain properties of each alert to what we call **primary** and **secondary** properties. For example, in the alert payload above, the `host` property is considered **primary**, and the `check` property is considered **secondary**. These two properties are used across the board for various purposes, some of which will be discussed next.

_Note_: the **secondary** property is optional. In case it's missing, BigPanda will use only the **primary** property for its needs.

##### Event deduping

In case we receive two events with the same `app_key`,`timestamp`, **primary** and **secondary** properties, the last of these events will be dropped.

##### Merging events into alerts

A single alert in BigPanda can contain one or more events. Events are grouped into the same alert if they have the same `app_key`, **primary** and **secondary** properties. The status and description of the alert will be the status and description of the newest event (determined by the `timestamp` property). So in fact the following events:

       # First event
       {
        "status": "critical",
        "host": "production-database-1",
        "timestamp": 1402302570, # 09 Jun 2014 08:29:30 GMT
        "check": "CPU overloaded",
        "description": "CPU is above upper limit (70%)"
       }


       # Second event
       {
        "status": "warning",
        "host": "production-database-1",
        "timestamp": 1402303570, # 09 Jun 2014 08:46:10 GMT
        "check": "CPU overloaded",
        "description": "CPU is above warning limit (40%)"
       }

Will be merged into a single alert with `status` _warning_, and description _CPU is above warning limit (40%)_.

_Tip_: the best way to understand how events are merged into alerts, is to open the Lifecycle view in BigPanda.

_Note_: since BigPanda relies on `timestamp` to determine the latest state of an alert, it is important that events are sent to BigPanda in ascending order. When sending multiple events it is important that the `alerts` array is sorted by timestamp in ascending order.

#### Grouping alerts into Incidents (a.k.a Consolidation)

Noise suppression does not stop at the event level. BigPanda can take different alerts and group them together into high-level incidents. We call this process **Consolidation**. The most basic consolidation rule is using the **primary** property. For example, two alerts on the same `host` with different `check`s will be consolidated to a single incident representing all open alerts on the given `host`.

Grouping alerts by `host` (or `application` or `service`) is pretty awesome, but sometimes it's not enough. What happens if you have the same problem on different hosts of the same logical cluster (for example, high CPU on several servers of your MySQL cluster)? You'd probably want to have only one incident for the whole cluster. The `cluster` property can be used for this purpose exactly: different alerts with the same `cluster` will be consolidated into a single incident in BigPanda.

##### Time sensitivity
Another dimension we consider when consolidating alerts into incidents is **Time**: generally speaking, there’s a higher chance that alerts that started on completely different times (hours or days apart) are symptoms of completely different problems. Under this assumption we added two more rules: 

* Two alerts will be consolidated by their **primary** property if and only if they started at the same 24 hours timeframe.
* Two alerts will be consolidated by their `cluster` property if and only if they started at the same 4 hours timeframe.

#### Alert Resolution and Expiration
Alerts that were not resolved, i.e. did not receive an event with status `ok`, will remain open in BigPanda and will cause the corresponding incident to remain open. Open incidents will continue to be displayed in BigPanda's OpsBox, so it's highly recommended that resolving events are sent to BigPanda this way or another. By default, open alerts will be automatically closed (a.k.a expired) after a months with no activity (i.e. no new events).

_Note_: incidents will remain open as long as at least one of the alerts associated with it is open.

#### UI Considerations
BigPanda will use the **primary** property to construct the title of incidents, and the **secondary** property to construct their subtitle.

#### Advanced Options
As aforementioned, BigPanda treats certain properties as **primary** and **secondary**. However in some cases, you might want to control which property should be treated as **primary** or **secondary**. For example, you might have an alert that is associated with both a host and an application, where the latter is **primary** and the former is **secondary**. So how do you tell BigPanda which is which? Very simple - you can use the `primary_property` and `secondary_property` properties. For example:

    {
      "status": "warning",
      "host": "production-database-1",
      "timestamp": 1402303570, # 09 Jun 2014 08:46:10 GMT
      "application": "Billing",
      "description": "CPU is above warning limit (40%)",
      "primary_property": "application",
      "seconday_property": "host"
    }


<!-- docs-only-end -->

    

