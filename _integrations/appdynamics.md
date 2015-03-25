---
layout: integration 
title: "AppDynamics"
draft: false
type: Application Monitoring
---

#### Compatibility

BigPanda supports on-premise and dedicated SaaS deployments. For the latter, please ask AppDynamics to set up the custom action (steps 2-4) for you.

<!-- section-separator -->

#### Download

[Download](https://s3-us-west-1.amazonaws.com/bp-appdynamics-extension/bigpanda-alert-1.0.tar.gz) the tar.gz release and unpack it to `<CONTROLLER INSTALL ROOT>/custom/actions`

<!-- section-separator -->

#### Installation

Update or create `<CONTROLLER INSTALL ROOT>/custom/actions/custom.xml`. The file should look like this:

    <custom-actions>
        <action>
            <type>bigpanda-alert</type>
            <executable>bigpanda_alert.py</executable>
        </action>
    </custom-actions>

<!-- section-separator -->

#### Configuration

Edit `<CONTROLLER INSTALL ROOT>/custom/actions/bigpanda-alert/config.ini` and set your API token and app key:

    [base]
    api_token: $TOKEN
    app_key: $STREAM_ID
    logging: no

You can enable logging for debug purposes. The log will be at `/tmp/bigpanda-alert.log`

<!-- section-separator -->

#### Login

Login to the AppDynamics Controller.

For every application you have configured in AppDynamics, please follow steps 6-7.

<!-- section-separator -->

#### Create an AppDynamics Policy

Go to `Application > Alert & Respond > Policies` and click on `Create Policy`.

In the Create Policy window:

* Input `BigPanda` in the name field
* Check all of the `Health Rule Violation Events` checkboxes

The final outcome should look like this:
![Create Policy window](/media/appdynamics1.png)

<!-- section-separator -->

#### Create an AppDynamics Action
Without leaving the Create Policy window.
<!-- docs-only-start -->
Click on `Actions` on the left pane, and then click on ![+](/media/appdynamics-plus.png).
{: .not-responsive}
<!-- docs-only-end -->
<!-- app-only-start -->
Click on `Actions` on the left pane, and then click on ![+](/media/appdynamics-plus.png).
<!-- app-only-end -->

If you already created a `BigPandaAlert` action for another application in AppDynamics, choose it and then click `Select`.

Otherwise:

* Click on `Create Action`
* Select the `Run a Custom Action that has been uploaded to the Controller` option
* Click on `OK`
* Input `BigPandaAlert` in the name field
* Click on `Reload Custom Actions`
* In the Custom Action field choose `bigpanda-alert`
* Click on `Save` to save the new custom action

After creating the new custom action, click on `Save` to create the new policy.

<!-- section-separator -->

#### Success
*Don't forget to follow steps 6-7 for every application in AppDynamics*

Next time you'll have AppDynamics alerts, you will able to see them in the Incidents tab.


__Note__: We support only health rules violation alerts. If you need support in other alerts, please contact support@bigpanda.io.