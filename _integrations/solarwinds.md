---
layout: integration 
title: "SolarWinds"
draft: false
type: System Monitoring
---

#### Create system user account in SolarWinds

If you already have a user account with system rights, use it. If not, create a new one.

System user accounts can be created by sending a POST request to your SolarWinds server with your admin credentials. They cannot be created or managed from the Orion web interface.

    curl -XPOST -H "Content-Type: application/json" https://<user name>:<password>@<your server>:17778/SolarWinds/InformationService/v3/Json/Invoke/Orion.Accounts/CreateAccount -d '["System",{"AccountID":"<system user name>","<system password>":"password"}]'

<!-- section-separator -->

#### Subscribe BigPanda to alerts notifications in SolarWinds

In order to subscribe BigPanda to your SolarWinds alerts notification, you need to POST a request to your SolarWinds server.

Use the credentials of the system user account from the previous step.

    curl -XPOST -H "Content-Type: application/json" https://<system user name>:<system password>@<your server>:17778/SolarWinds/InformationService/v3/Json/Create/System.Subscription -d '{ "EndpointAddress": "http://a.bigpanda.io/data/integrations/solarwinds?access_token=$TOKEN&app_key=$STREAM_ID", "Binding": "http", "DataFormat": "json", "CredentialType": "None", "Query": "SUBSCRIBE Orion.AlertIndication" }'

The response contains the identifier of the subscription which is required to remove it. For example: "swis://dev.local/Orion/System.Subscription/Id=b626ef38-b1e3-448e-ba5a-f148dc9889ba"

<!-- section-separator -->

#### Update your alert to send notifications

In order to get notifications on alerts, mark the alert as "Alert Integration". Built-in SolarWinds alerts already send notifications but if you have created other alerts in the past or create new alerts in the future do the following for each one to trigger notifications:

* While editing the alert go to the **SUMMARY** tab
* At the bottom of the page expand the **Alert Integration**
* Check the box beside **Integrate alert with other SolarWinds products and subscribers**
* Select **Use the name of alert as a subject**

<!-- section-separator -->

#### Success
Next time you have SolarWinds alerts, you'll see them in the BigPanda Incident Dashboard.

