---
layout: integration 
title: "Splunk (6.2 and below)"
draft: false
type: "Log Aggregation"

---

#### Review Splunk Integration Notes

Before integrating Splunk with BigPanda, review these notes:

* **No automatic resolution:** Unlike for other monitoring systems, Splunk incidents do not resolve automatically because Splunk does not send notifications when alerts are resolved. Resolve Splunk incidents manually by clicking the resolve button (![media/resolve.png](/media/resolve.png)) in the incident.

* **Requires Python package:** You must install the BigPanda Python package on the Splunk server before completing the integration. See instructions below.

* **All Splunk alerts are sent to BigPanda:** Without additional configuration, the BigPanda Splunk action script sends all Splunk alerts to BigPanda.

<!-- section-separator -->
#### Install the BigPanda Python Package

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

Configure Splunk to execute the BigPanda action script when an alert is triggered.

1. Run the following command:

  ````
  $ sudo bigpanda-splunk-defaults
  ````
    
2. Restart the Splunk server for the changes to take effect.

<!-- section-separator -->

#### Success
Next time Splunk generates an alert, you will see it in the Incident Dashboard.
