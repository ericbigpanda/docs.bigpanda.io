---
layout: integration 
title: "Catchpoint"
draft: false
type: Application Monitoring

---

#### Locate API Settings
In Catchpoint, go to **Settings > API**.

<!-- section-separator -->

#### Create an API Alert for BigPanda

![media/CatchpointScreenshot.jpg](/media/CatchpointScreenshot.jpg)

1\. Under **Alerts API**, add a new endpoint by filling in the fields:

* **Endpoint URL**: `https://api.bigpanda.io/data/integrations/catchpoint?$URL_PARAMS`
* **Status**: **Active**

2\. Under **Format**, click **Select Template > Add new**. A form opens where you can define the template.

3\. Fill in the form:

* **Name**: `BigPanda`
* **Format**: **JSON**
* **Template**:
```
    {
    "notificationLevelId" : "${notificationLevelId}",
    "TestName" : "${TestName}",
    "testId":"${testId}",
    "testUrl":"${testUrl}",
    "monitorTypeId":"${monitorTypeId}",
    "AlertTypeId": "${AlertTypeId}",
    "AlertProcessingTimestampUtcEpoch": "${AlertProcessingTimestampUtcEpoch}",
    "alertTriggerPercentage":"${alertTriggerPercentage}",
    "alertTriggerTotal":"${alertTriggerTotal}"
    }
```

4\. Click **Save**.

5\. Click **Select Template** and select **BigPanda**.

6\. At the bottom of the screen, click **Save**.


<!-- section-separator -->

#### Success!

The next time Catchpoint generates an alert, you will see it in the Incident Dashboard.


