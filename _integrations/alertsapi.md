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
