---
layout: integration 
title: "SolarWinds"
draft: false
type: System Monitoring
---

#### Compatibility

The BigPanda-SolarWinds integration only supports Orion server version 2015.1 or higher. Contact [support@bigpanda.io](mailto:support@bigpanda.io?Subject=SolarWinds%integration%help "contact BigPanda support") with questions about version support.

<!-- section-separator -->

#### Create system user account in SolarWinds

If you already have a user account with system rights, proceed to the next step. If not, create a new account.

You can create a system user account by sending a POST request to your SolarWinds server. System user accounts cannot be created or managed from the Orion web interface. You must use admin user credentials in the POST request to create a new system user account.

cURL command:

    curl -XPOST -H "Content-Type: application/json" https://<admin user name>:<admin password>@<your server>:17778/SolarWinds/InformationService/v3/Json/Invoke/Orion.Accounts/CreateAccount -d '["System",{"AccountID":"<new system user name>","password":"<new system user password>"}]'

PowerShell commands:

    $securepassword = ConvertTo-SecureString “<admin password>” -AsPlainText -Force
    $credentials = New-Object System.Management.Automation.PSCredential(“<admin user name>”, $securepassword)

    Invoke-WebRequest -ContentType application/json  -Method Post -Uri https://<your server>:17778/SolarWinds/InformationService/v3/Json/Invoke/Orion.Accounts/CreateAccount -Body '["System",{"AccountID":"<new system user name>","password":"<new system user password>"}]' -Credential $credentials

<!-- section-separator -->

#### Subscribe BigPanda to alert notifications in SolarWinds

To subscribe BigPanda to your SolarWinds alert notifications, send a POST request to your SolarWinds server.

Use the credentials of the system user account from the previous step.

cURL command:

    curl -XPOST -H "Content-Type: application/json" https://<system user name>:<system user password>@<your server>:17778/SolarWinds/InformationService/v3/Json/Create/System.Subscription -d '{ "EndpointAddress": "https://api.bigpanda.io/data/integrations/solarwinds?access_token=$TOKEN&app_key=$STREAM_ID", "Binding": "http", "DataFormat": "json", "CredentialType": "None", "Query": "SUBSCRIBE Orion.AlertIndication" }'

PowerShell commands:

    $securepassword = ConvertTo-SecureString “<system user password>” -AsPlainText -Force
    $credentials = New-Object System.Management.Automation.PSCredential(“<system user name>”, $securepassword)

    Invoke-WebRequest -ContentType application/json -Method Post -Uri https://<your server>:17778/SolarWinds/InformationService/v3/Json/Create/System.Subscription -Body '{ "EndpointAddress": "https://api.bigpanda.io/data/integrations/solarwinds?access_token=$TOKEN&app_key=<your app key>", "Binding": "http", "DataFormat": "json", "CredentialType": "None", "Query": "SUBSCRIBE Orion.AlertIndication" }' -Credential $credentials

The response contains the identifier of the subscription, which is required to remove it. For example: "swis://dev.local/Orion/System.Subscription/Id=b626ef38-b1e3-448e-ba5a-f148dc9889ba"

<!-- section-separator -->

#### Update your alert to send notifications

To get notifications on alerts, mark the alert as "Alert Integration". Built-in SolarWinds alerts already send notifications. If you have created your own alerts, follow these steps for each alert to trigger notifications:

1. While editing the alert, click the **SUMMARY** tab.
2. At the bottom of the page, expand **Alert Integration**.
3. Select the **Integrate alert with other SolarWinds products and subscribers** check box.
4. Select **Use the name of alert as a subject**.

<!-- section-separator -->

#### Success
Next time you have SolarWinds alerts, you'll see them in the BigPanda Incident Dashboard.

