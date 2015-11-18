---
layout: integration 
title: "AppDynamics"
draft: false
type: Application Monitoring
---

#### Determine Your Version

BigPanda supports on-premise and dedicated SaaS deployments of AppDynamics. The procedure for configuring the custom action (steps 4 - 6) is different depending on which version you are using.

* For a dedicated SaaS deployment, contact AppDynamics support to configure the custom action.
* For an on-premise deployment with the Windows controller, contact support@bigpanda.io.
* For an on-premise deployment with the Linux controller, follow steps 4 - 6 and contact support@bigpanda.io if you have any questions.

<!-- section-separator -->

#### Download the Extension

1\. [Download](https://s3-us-west-1.amazonaws.com/bp-appdynamics-extension/bigpanda-alert-latest.tar.gz) the tar.gz release and unpack it to `<CONTROLLER INSTALL ROOT>/custom/actions`.

2\. If your controller is deployed on **RHEL 5** or **CentOS 5** install the simplejson module:

    $ sudo yum install python-simplejson

<!-- section-separator -->

#### Add the BigPanda Custom Action

Create `<CONTROLLER INSTALL ROOT>/custom/actions/custom.xml` with the following content. If the file already exists, just add the bigpanda-alert action.

    <custom-actions>
        <action>
            <type>bigpanda-alert</type>
            <executable>bigpanda_alert.py</executable>
        </action>
    </custom-actions>


<!-- section-separator -->

#### Configure the Action

Edit `<CONTROLLER INSTALL ROOT>/custom/actions/bigpanda-alert/config.ini` and set your API token and app key:

    [base]
    api_token: $TOKEN
    app_key: $STREAM_ID
    logging: no

You can enable logging for debug purposes. The log will be available at `/tmp/bigpanda-alert.log`.

<!-- section-separator -->

#### Log in to AppDynamics

1\. Log in to the AppDynamics Controller.

2\. For every application you have configured in AppDynamics, complete steps 8 - 9.

<!-- section-separator -->

#### Create an AppDynamics Policy

1\. Go to **Application > Alert & Respond > Policies** and click **Create Policy**.

2\. In the Create Policy window:

  * In the name field, enter `BigPanda`.
  * Select all of the **Health Rule Violation Events** check boxes.

Your selections should look like this example:
![Create Policy window](/media/appdynamics1.png)

<!-- section-separator -->

#### Create an AppDynamics Action
1\. In the Create Policy window, click **Actions** in the left pane, and then click ![+](/media/appdynamics-plus.png).

2\. If you already created a `BigPandaAlert` action for another application in AppDynamics, choose it and then click `Select`.

3\. If you have not created a `BigPandaAlert` action for another application in AppDynamics, create the action:

  1. Click **Create Action**.
  2. Select **Run a Custom Action that has been uploaded to the Controller**.
  3. Click **OK**.
  4. In the name field, enter `BigPandaAlert`.
  5. Click **Reload Custom Actions**.
  6. In the **Custom Action** field, select **bigpanda-alert**.
  7. Click **Save** to save the new custom action.

4\. Click **Save** to create the new policy.

<!-- section-separator -->

#### Success

Ensure you have completed steps 8 - 9 for every application in AppDynamics.

The next time AppDynamics generates a health rule alert, you will see it in the Incidents Dashboard.

__Note__: If you need support for alerts other than health rules, please contact support@bigpanda.io.
