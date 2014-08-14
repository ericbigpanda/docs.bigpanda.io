---
layout: integration 
title: "Deployments REST API"
draft: false
type: API
---

#### Create deployment start event
The deployment's data is sent as a JSON object with the following fields:

|Field|Description|Example|
|-----|-----------|-------|
|component|The name of the component being deployed|billing|
|version|The deployment version|1.2.3|
|hosts|Affected hosts names|["prod-api-1", "prod-api-2"]|
|timestamp *\*optional*|UNIX timestamp (without milliseconds) in UTC. *Default: now*|1367316102|
|description *\*optional*|Description of the deployment|New improvement to the billing process|
|owner *\*optional*|The person responsible for the deployment|John|
|source *\*optional*|The system that triggered the event|Chef|

Example:

    {
      "component": "billing",
      "version": "1.2.3",
      "hosts": [
        "prod-api-1", "prod-api-2"
      ],
      "description": "New improvement to the billing process",
      "owner": "john@acme.com"
    }

<!-- section-separator -->

#### Notify BigPanda when a deployment starts

`Note:` Deployments will be shown as in-progress until you send an end of deployment notification.

POST your JSON object to `https://api.bigpanda.io/data/events/deployments/start`, using the following HTTP headers:

**Authorization**: Bearer $TOKEN  
**Content-Type**: application/json  

**Example API Call**

execute the following cURL call (with deployment-start.json containing the deployment object) :

    curl -i -X POST -H "Authorization: Bearer $TOKEN" \
    -H "Content-Type: application/json" \
    -d @deployment-start.json \
    "https://api.bigpanda.io/data/events/deployments/start"

The possible responses are in the following table:

|Response|Description|
|--------|-----------|
|`201 Created`|Success.  |
|`400 Bad Request`|Default code for invalid requests. For example, a missing mandatory field.|
|`401 Unauthorized`|The used token is invalid or missing.|
|`404 Not Found`|The requested endpoint isn't available|
|`500 Internal Server Error`|Default code for errors that occurred due to problems on our side.|

<!-- section-separator -->

#### Create deployment end event
The deployment's data is sent as a JSON object with the following fields:

|Field|Description|Example|
|-----|-----------|-------|
|component|The name of the component being deployed|billing|
|version|The deployment version|1.2.3|
|hosts|Affected hosts names|["prod-api-1", "prod-api-2"]|
|status *optional*|The final status of the deployment - success/failure. *Default: success*|success|
|errorMessage *optional*|The error message in case the deployment failed|Failed migration mongodb

Example:

    {
      "component": "billing",
      "version": "1.2.3",
      "hosts": [
        "prod-api-1", "prod-api-2"
      ],
      "status": "failure",
      "errorMessage": "Failed migration mongodb"
    }

<!-- section-separator -->

#### Notify BigPanda when a deployment ends

`Note:` Deployments will be shown as in-progress until you send this notification.

POST your JSON object to `https://api.bigpanda.io/data/events/deployments/end`, using the following HTTP headers:

**Authorization**: Bearer $TOKEN  
**Content-Type**: application/json  

The possible responses are in the following table:

|Response|Description|
|--------|-----------|
|`201 Created`|Success.  |
|`400 Bad Request`|Default code for invalid requests. For example, a missing mandatory field.|
|`401 Unauthorized`|The used token is invalid or missing.|
|`404 Not Found`|The requested endpoint isn't available|
|`500 Internal Server Error`|Default code for errors that occurred due to problems on our side.|
