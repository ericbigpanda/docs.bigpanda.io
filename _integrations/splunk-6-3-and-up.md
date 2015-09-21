---
layout: integration 
title: "Splunk (6.3 and up)"
draft: false
type: "Log Aggregation"

---

#### No automatic resolution

One thing to note before integrating Splunk with BigPanda:

Unlike other monitoring systems Splunk incidents will not resolve automatically because Splunk does not send notifications when alerts are resolved. Resolve Splunk incidents manually by clicking the resolve button (![media/resolve.png](/media/resolve.png)) in the incident.

#### Install the BigPanda Splunk App

Within Splunk, Click on the cog wheel next to the apps (Top left corner).

Click on Browse More Apps, then search for BigPanda

**TBD** *CHECK FOR THE FINAL SCENARIO WITH SPLUNK*

...

Click `Install`

<!-- section-separator -->

#### Configure The BigPanda Splunk App

Right after installing the BigPanda Splunk App, you'll be prompted to set up BigPanda.

In the setup screen, for the API Key enter:

    $TOKEN


Then for the App Token, enter:

    $STREAM_ID

<!-- section-separator -->


#### Configure your Splunk Alert to notify BigPanda

While editing or creating your Alert, select BigPanda in the `Trigger Actions` category.

Optionally, if you have more than one BigPanda Splunk integration, you can override the App Key here (Enter `$STREAM_ID`).

<!-- section-separator -->

#### Success
Next time Splunk generates an alert, you will see it in the Incident Dashboard.
