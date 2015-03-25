---
layout: integration 
title: "AppDynamics"
draft: false
type: Application Monitoring
---

#### Compatibility

BigPanda supports on-premise and dedicated SaaS deployments. For the latter, please ask AppDynamics to set up the integration with the instructions bellow.

<!-- section-separator -->

#### Download

[Download](https://s3-us-west-1.amazonaws.com/bp-appdynamics-extension/bigpanda-alert-1.0.tar.gz) the zip release and unpack it to `<CONTROLLER INSTALL ROOT>/custom/actions`

<!-- section-separator -->

#### Installation

Update or create `<CONTROLLER INSTALL ROOT>/custom/actions/custom.xml`. The file should look like this:

    <custom-actions>
        <action>
            <type>bigpanda-alert</type>
            <executable>bigpanda-alert.py</executable>
        </action>
    </custom-actions>

<!-- section-separator -->

#### Configuration

Edit `<CONTROLLER INSTALL ROOT>/custom/actions/bigpanda-alert/config.ini` and set your API token and app key:

    [base]
    api_token: $TOKEN
    app_key: $STREAM_ID
    logging: no

You can enable logging for debug purposes. The log will be at `/tmp/bigpanda.action.log`

__Note__: We support only health rules violation alerts. If you need support in other alerts, please contact support@bigpanda.io.