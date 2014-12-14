---
layout: integration 
title: "Panopta"
draft: false
type: System Monitoring
---

#### Define the Panopta BigPanda Integration  

* Go to the Panopta app, and from the top menu, choose [Configuration -> Users & Integrations](https://my.panopta.com/config/ListContacts)
* In the 3rd Party Integration box, click on Add, and choose **BigPanda**
* Fill out the form with the following details:
  * **Name:** `<choose any name, you can use the integration name from step 1>`
  * **Auth Token:** `$TOKEN`
  * **Application Key:** `$STREAM_ID`
* Click on **Create BigPanda Notification**

<!-- section-separator -->

#### Define BigPanda as a Notifications' Recipient

* Under Configuration, choose [Notification Schedules](https://my.panopta.com/config/ListNotificationSchedules)
* For each Notification Schedule that you're using, do the following:
  * Choose the Notification Schedule
  * Click on **Create a New Event**
  * Under **Contacts** choose the BigPanda integration that you've just created
  * Click on **Create Action**
  * Click on **Return to Schedule List** above

<!-- section-separator -->

#### Success
Next time you'll have Panopta alerts, you will be able to see them in BigPanda.
