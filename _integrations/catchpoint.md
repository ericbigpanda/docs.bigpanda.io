---
layout: integration 
title: "Catchpoint"
draft: false
type: Application Monitoring

---

#### Locate API Settings
In the Catchpoint side-dashboard, navigate to **Settings > API**.

<!-- section-separator -->

#### Create an API Alert for BigPanda

1\. Under **Alerts API**, add a new endpoint. Fill in:

* **Endpoint URL**: `https://api.bigpanda.io/data/integrations/catchpoint?$URL_PARAMS`
* **Status**: Select **Active**

Under **Format**, click **Select Template > Add new**
2\. Fill in the form:

* **Name**: `BigPanda`
* **Format**: Select **JSON**
* **Template**: `{
                 "notificationLevelId" : "${notificationLevelId}",
                 "TestName" : "${TestName}",
                 "testId":"${testId}",
                 "testUrl":"${testUrl}",
                 "monitorTypeId":"${monitorTypeId}",
                 "AlertTypeId": "${AlertTypeId}",
                 "AlertProcessingTimestampUtcEpoch": "${AlertProcessingTimestampUtcEpoch}",
                 "alertTriggerPercentage":"${alertTriggerPercentage}",
                 "alertTriggerTotal":"${alertTriggerTotal}"
                 }`

3\. Click **Save**.

4\. Re-click **Select Template** and select **BigPanda**.

5\. At the bottom of the screen, click **Save**.

