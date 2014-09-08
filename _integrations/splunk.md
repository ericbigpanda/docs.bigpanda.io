---
layout: integration 
title: "Splunk"
draft: true
type: "Log Aggregation"

---
#### Create a BigPanda Application Key

Start by creating an app key for a Splunk account with the form below. Use a separate app key per each Splunk account you integrate. 

*Tip: if you have only one Splunk account, you might want to click on `Generate App Key` without providing a name.*

<!-- app-only-start -->
<!-- include 'integrations/multiple/multiple' -->
<!-- app-only-end -->
<!-- docs-only-start -->

In the BigPanda Application, there's a Form that you can enter the Splunk account name.

<!-- docs-only-end -->
<!-- section-separator -->

#### Install package
Now you'll need to install the python package to get BigPanda Splunk action script:


    $ sudo pip install bigpanda-splunk
    $ sudo bigpanda-splunk-configure $TOKEN $STREAM_ID
  

<!-- docs-only-start -->
This will create a test alert in your BigPanda Dashboard
<!-- docs-only-end -->
<!-- app-only-start -->
After running these commands, you should see a test alert in OpsBox.
<!-- app-only-end -->

<!-- section-separator -->

#### Configure alerts in Splunk to run script

For each alert configured in Splunk:

* Edit the alert through the Splunk UI
* Enable the `Run a script` option, and set `bigpanda-splunk` as the script filename.

<!-- section-separator -->

#### Success
Next time you will have Splunk alerts, you will be able to see them in OpsBox.