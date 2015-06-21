---
layout: integration 
title: "Librato"
draft: false
type: System Monitoring
--- 

#### Configuring the BigPanda Service in Librato

* In Librato, enter your **account settings** page.
* Select the **Services** tab, and then select **BigPanda** from the services list.
* This should open the BigPanda Service Configuration form. If the form doesn't open, click on the plus button to open it.
* Fill in the form and click on **create service**. The form should be filled with the following details:

		Title: <FREE TEXT>
		App Key: $STREAM_ID
		Token: $TOKEN

<!-- section-separator -->

#### Using the BigPanda Service in Librato

* In Librato, enter the **Alerts** page.
* Create a new alert or edit an existing one.
* In the **Notifications Services** tab, select **BigPanda**.
* Click on the **Test Fire Alert** button to send a test notification to BigPanda. Make sure that you can see the alert in the **Incidents** tab. Since it's a test message, it won't be resolved by its own. To resolve the issue manually, use the **Force Resolve** action in the **More** actions context menu of the incident.



