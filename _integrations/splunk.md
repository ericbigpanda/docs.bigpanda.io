---
layout: integration 
title: "Splunk"
draft: true
type: "Log Aggregation"

---

#### Install package
Now you'll need to install the python package to get BigPanda Splunk action script:


    $ sudo pip install bigpanda-splunk
    $ sudo bigpanda-splunk-configure $TOKEN $STREAM_ID
  

<!-- docs-only-start -->
This will create a test alert in your BigPanda Dashboard.
<!-- docs-only-end -->
<!-- app-only-start -->
After running these commands, you should see a test alert in OpsBox.
<!-- app-only-end -->
<!-- docs-only-start -->
__Note:__ Unlike other incidents in BigPanda, Splunk incidents will not resolve automatically as Splunk does not send notifications when an alert is resolved. For this reason, Splunk incidents can be resolved manually by clicking on the resolve button (![media/resolve.png](/media/resolve.png))  on the incident.
{: .not-responsive}
<!-- docs-only-end -->
<!-- app-only-start -->
__Note:__ Unlike other incidents in BigPanda, Splunk incidents will not resolve automatically as Splunk does not send notifications when an alert is resolved. For this reason, Splunk incidents can be resolved manually by clicking on the resolve button (![media/resolve.png](/media/resolve.png)) on the incident.
<!-- app-only-end -->

<!-- section-separator -->

#### Configure Splunk

Configure Splunk to always execute BigPanda's action script when an alert is triggered by running the following configuration script:

    $ sudo bigpanda-splunk-defaults


<!-- section-separator -->

#### Success
Next time you will have Splunk alerts, you will be able to see them in OpsBox.