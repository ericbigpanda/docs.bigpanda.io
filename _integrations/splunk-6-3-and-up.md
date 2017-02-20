---
layout: integration 
title: "Splunk (6.3 and up)"
draft: false
type: "Log Aggregation"

---

#### Setting up the BigPanda App for Splunk

**Note:** Splunk incidents are not closed automatically because Splunk does not send notifications when alerts are resolved. You must manually resolve Splunk incidents in BigPanda to remove them from the incident feed.

1. In the Splunkbase app store, search for **BigPanda** and download the **BigPanda App for Splunk**.

2. Log in to Splunk as an administrator.

3. Go to **Settings...Alert Actions (under Knowledge)**.

4. In the list of alert actions, find the alert action for BigPanda.

5. In the **Setup** column, click the link for **Setup bigpanda_alerts**.

6. In the setup screen, populate the following fields:

  * Enter `$TOKEN` in the **API Token** field.

  * Enter `$STREAM_ID` in the **App Key** field.

**Note:** The **API URL** field is populated automatically. Do not change this field value.

<!-- section-separator -->

#### Set up **Trigger Actions** for the alerts you want to send to BigPanda.

For each alert that you want to send to BigPanda:

1. From the Alerts page in Splunk, select an alert to open its detail page, and then use the **Click to edit actions link**. Alternatively, run a search and go to **Save As > Alert**.

2. At the bottom of the window, click **Add Actions**, and then select **BigPanda**.

3. (Optional) Enter any custom alert values you want to send to BigPanda when the alert is triggered.
    * If you have more than one BigPanda Splunk integration, you can override the App Key (enter `$STREAM_ID`).
    * You can override the description, primary property, and secondary property of the alert.
    
    For more information, see [Customizing Splunk](https://www.bigpanda.io/docs/display/BD/Customizing+Splunk).

<!-- section-separator -->

#### Success
The next time Splunk generates an alert, you will see it in the Incidents Dashboard.
