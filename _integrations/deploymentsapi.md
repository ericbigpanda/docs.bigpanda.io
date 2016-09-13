---
layout: integration 
title: "Deployments REST API"
draft: false
type: API
---

#### Create deployment start event
To create a new, in-progress deployment in the **Changes** tab, send the deployment data as a JSON object with the following fields: 

|Field|Description|Example|
|-----|-----------|-------|
|`component`|Name of the component being deployed.|`"component": "billing"`|
|`version`|Deployment version.|`"version": "1.2.3"`|
|`hosts`|Array of host names for hosts that are affected by the deployment.|`"hosts": ["prod-api-1", "prod-api-2"]`|
|`timestamp` *\*optional*| Time that the event started in Unix format (UTC timezone, without milliseconds). If the time is not specified, the value defaults to the current time. |`"timestamp": 1367316102`|
|`description` *\*optional*|Additional free-form text information about this deployment.|`"description": "New improvement to the billing process"`|
|`owner` *\*optional*|Person responsible for the deployment.|`"owner": "John"`|
|`source` *\*optional*|System that triggered the event.|`"source: "Chef"`|

**Note**: You must configure the `component`, `version`, and `hosts` parameters identically in the start and end events to ensure that BigPanda updates the status of the correct deployment. 

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

For more information on authentication, start and end event methods, and response codes, see [Deployments API](https://www.bigpanda.io/docs/x/WIdzAQ).

<!-- section-separator -->

#### Notify BigPanda when a deployment starts

**Note**: Deployments appear as in-progress until you send a matching end of deployment notification.

POST your JSON object to `https://api.bigpanda.io/data/events/deployments/start`, using the following HTTP headers:

    Authorization: Bearer $TOKEN  
    Content-Type: application/json  

**Example API Call**

Execute the following cURL call (with deployment-start.json containing the deployment object) :

    curl -i -X POST -H "Authorization: Bearer $TOKEN" \
    -H "Content-Type: application/json" \
    -d @deployment-start.json \
    "https://api.bigpanda.io/data/events/deployments/start"

<!-- section-separator -->

#### Create deployment end event
Send the deployment data as a JSON object with the following fields:

|Field|Description|Example|
|-----|-----------|-------|
|`component`|Name of the component being deployed.|`"component": "billing"`|
|`version`|Deployment version.|`"version": "1.2.3"`|
|`hosts`|Array of host names for hosts that are affected by the deployment.|`"host": ["prod-api-1", "prod-api-2"]`|
|`status` *optional*|Final status of the deployment. One of [`success`, `failure`]. If the status is not specified, the value defaults to success. |`"status": "success"`|
|`errorMessage` *optional*|Error message, if the deployment failed.|`"errorMessage": "Failed migration mongodb"`|

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

**Note**: Deployments appear as in-progress until you send a matching end notification.

POST your JSON object to `https://api.bigpanda.io/data/events/deployments/end`, using the following HTTP headers:

    Authorization: Bearer $TOKEN 
    Content-Type: application/json  

Execute the following cURL call (with deployment-end.json containing the deployment object):

    curl -i -X POST -H "Authorization: Bearer $TOKEN" \
    -H "Content-Type: application/json" \
    -d @deployment-end.json \
    "https://api.bigpanda.io/data/events/deployments/end"


