---
layout: integration 
title: "Splunk (6.3 and up)"
draft: false
type: "Log Aggregation"

---

#### No automatic resolution

One thing to note before integrating Splunk with BigPanda:

Unlike other monitoring systems Splunk incidents will not resolve automatically because Splunk does not send notifications when alerts are resolved. Resolve Splunk incidents manually by clicking the resolve button (![media/resolve.png](/media/resolve.png)) in the incident.

#### Setting up the BigPanda App for Splunk

In the Splunkbase app store, search for **BigPanda** and download the app for **BigPanda App for Splunk**.

Log in to Splunk 6.3 as an administrator.

Go to **Settings...Alert Actions (under Knowledge)**.

In the list of alert actions, find the alert action for BigPanda.

In the **Setup** column, click the link for **Setup bigpanda_alerts**.

In the setup screen that will open, populate the fields as follows:

  Enter `$TOKEN` into the **App Key** field in Splunk.

  Enter `$STREAM_ID` into the **API Token** field in Splunk.

**Note:** The **API URL** is populated automatically in Splunk. Do not change this field value.

<!-- section-separator -->

#### Set up **Trigger Actions** for the alerts you want to send to BigPanda.

For example, you can run a **Search, Save As > Alert**.
At the bottom of the window, click **+Add Actions**, and then select **BigPanda**.

When the alert is triggered in Splunk, it is sent to BigPanda.

Optionally, if you have more than one BigPanda Splunk integration, you can override the App Key here (Enter `$STREAM_ID`).

<!-- section-separator -->

#### Success
Next time Splunk generates an alert, you will see it in the Incident Dashboard.
