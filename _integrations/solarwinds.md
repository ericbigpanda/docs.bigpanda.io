---
layout: integration 
title: "SolarWinds"
draft: false
type: System Monitoring
---

#### Create system level user account in SolarWinds

Create a system level user account by sending a POST request to your SolarWinds server. If you have previously created a system user account through this method, you can proceed to the next step.

**Note:**
* System level user accounts cannot be created or managed from the Orion web interface. You must use a POST request.
* You must use admin user credentials to create the new system user.
* When using the commands below, be sure to replace the generic text (indicated in &lt;CAPS&gt;) with your specific user and server information.

cURL command:

    curl -XPOST -H "Content-Type: application/json" https://<ADMIN USER NAME>:<ADMIN PASSWORD>@<YOUR SERVER>:17778/SolarWinds/InformationService/v3/Json/Invoke/Orion.Accounts/CreateAccount -d '["System",{"AccountID":"<NEW SYSTEM USER NAME>","password":"<NEW SYSTEM USER PASSWORD>"}]'

PowerShell commands:

    $securepassword = ConvertTo-SecureString “<ADMIN PASSWORD>” -AsPlainText -Force
    $credentials = New-Object System.Management.Automation.PSCredential(“<ADMIN USER NAME>”, $securepassword)

    Invoke-WebRequest -ContentType application/json  -Method Post -Uri https://<YOUR SERVER>:17778/SolarWinds/InformationService/v3/Json/Invoke/Orion.Accounts/CreateAccount -Body '["System",{"AccountID":"<NEW SYSTEM USER NAME>","password":"<NEW SYSTEM USER PASSWORD>"}]' -Credential $credentials

<!-- section-separator -->

#### Subscribe BigPanda to alert notifications in SolarWinds

Subscribe BigPanda to your SolarWinds alert notifications by sending a POST request to your SolarWinds server.

Use the credentials of the system user account from the previous step. 

**Note:** 
* An admin user cannot be used in place of a system level user.
* When using the commands below, be sure to replace the generic text (indicated in &lt;CAPS&gt;) with your specific user and server information.

cURL command:

    curl -XPOST -H "Content-Type: application/json" https://<SYSTEM USER NAME>:<SYSTEM USER PASSWORD>@<YOUR SERVER>:17778/SolarWinds/InformationService/v3/Json/Create/System.Subscription -d '{ "EndpointAddress": "https://api.bigpanda.io/data/integrations/solarwinds?access_token=$TOKEN&app_key=$STREAM_ID", "Binding": "http", "DataFormat": "json", "CredentialType": "None", "Query": "SUBSCRIBE Orion.AlertIndication" }'

PowerShell commands:

    $securepassword = ConvertTo-SecureString “<SYSTEM USER PASSWORD>” -AsPlainText -Force
    $credentials = New-Object System.Management.Automation.PSCredential(“<SYSTEM USER NAME>”, $securepassword)

    Invoke-WebRequest -ContentType application/json -Method Post -Uri https://<YOUR SERVER>:17778/SolarWinds/InformationService/v3/Json/Create/System.Subscription -Body '{ "EndpointAddress": "https://api.bigpanda.io/data/integrations/solarwinds?access_token=$TOKEN&app_key=$STREAM_ID", "Binding": "http", "DataFormat": "json", "CredentialType": "None", "Query": "SUBSCRIBE Orion.AlertIndication" }' -Credential $credentials

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

