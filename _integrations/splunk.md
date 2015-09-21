---
layout: integration 
title: "Splunk (6.2 and below)"
draft: false
type: "Log Aggregation"

---

Three things to note before integrating Splunk with BigPanda:

#### No automatic resolution
Unlike other monitoring systems Splunk incidents will not resolve automatically because Splunk does not send notifications when alerts are resolved. Resolve Splunk incidents manually by clicking the resolve button (![media/resolve.png](/media/resolve.png)) in the incident.

#### Requires installation of Python package
The BigPanda Python package must first be installed on the Splunk server to complete the integration. See instructions below.

#### All Splunk alerts are sent to BigPanda
Without additional configuration, the BigPanda Splunk action script forwards all Splunk alerts to BigPanda.

Here are instructions for integrating Splunk with BigPanda:

#### Install the BigPanda Python package
Download and install the BigPanda Python package to get the BigPanda Splunk action script:

    $ sudo pip install bigpanda-splunk
    $ sudo bigpanda-splunk-configure $TOKEN $STREAM_ID

<!-- docs-only-start -->
The second command creates a test incident in your BigPanda Incident Dashboard.
<!-- docs-only-end -->
<!-- app-only-start -->
After running these commands, you should see a test alert in the Incident Dashboard.
<!-- app-only-end -->

<!-- section-separator -->

#### Configure Splunk

Configure Splunk to execute BigPanda's action script when an alert is triggered by running the following:

    $ sudo bigpanda-splunk-defaults
    
Restart the Splunk server for the changes to take effect.

<!-- section-separator -->

#### Success
Next time Splunk generates an alert, you will see it in the Incident Dashboard.
