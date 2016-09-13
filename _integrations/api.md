---
layout: integration 
title: "Alerts REST API"
type: API
draft: false
---

#### Make a REST Call From Your Monitoring System

Configure the integrated system to call the Alerts API endpoint:
    
    https://api.bigpanda.io/data/v2/alerts
    

Use the following HTTP headers:
    
    Authorization: Bearer $TOKEN  
    Content-Type: application/json


The JSON payload can contain all or a subset of the following fields:

|Field|Description|Example|
|-----|-----------|-------|
|`app_key`|Application key from the first step.|`"app_key": "$STREAM_ID"`|
|`status`|Status of the alert. One of [ `ok`, `critical`, `warning`, `acknowledged` ].|`"status": "critical"`|
|`host` */`service`* */`application`* |Main object that caused the alert. Can be the associated host or, if a host isn't relevant, a service or an application. If you want to include more than one of these fields, consider specifying the primary and secondary properties.|`"host": "east-mongodb-1"`|
|`timestamp` *\*optional*|Time that the alert occured in unix format (UTC timezone). If the time is not specified, the value defaults to the current time.|`"timestamp": 1402302570`|
|`check` *\*optional*|Secondary object or sub-item that caused the alert (often shown as an incident subtitle in BigPanda).|`"check": "ping"`|
|`description` *\*optional*|Additional free-form text information about this alert.|`"description": "ping to east-mongodb-1 failed"`|
|`cluster` *\*optional*|Server cluster or logical host-group from which the alert was sent. This value is used to correlate alerts into high-level incidents.|`"cluster": "east-mongodb"`|
|Additional attributes *\*optional*|Additional information you want to have available in the BigPanda Incident Dashboard. You can add any number of custom JSON attributes with a string value to the payload.|||

For information on how to send multiple alerts or configure primary and secondary properties, see [Alerts API](https://www.bigpanda.io/docs/x/V4dzAQ).

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

To validate that everything is configured correctly, send a test alert by running the following command in Shell:
 
    curl -XPOST -H "Content-Type: application/json" \
    -H "Authorization: Bearer $TOKEN" \
    https://api.bigpanda.io/data/v2/alerts \
    -d '{ "app_key": "$STREAM_ID", "status": "critical", "host": "production-database-1", "check": "CPU overloaded" }'

The alert should now appear in the [Incidents dashboard](https://a.bigpanda.io). Close the alert by running: 

    curl -XPOST -H "Content-Type: application/json" \
    -H "Authorization: Bearer $TOKEN" \
    https://api.bigpanda.io/data/v2/alerts \
    -d '{ "app_key": "$STREAM_ID", "status": "ok", "host": "production-database-1", "check": "CPU overloaded" }'
