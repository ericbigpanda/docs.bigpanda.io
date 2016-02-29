---
layout: integration 
title: "SolarWinds"
draft: false
type: System Monitoring
---

#### Download the BigPanda SolarWinds Integration Utility

The `bigpanda-solarwinds-config` utility is a small, command line application for configuring your BigPanda SolarWinds integration.

1. Download the compressed archive of the utility for your operating system:

    [Linux 64-bit](https://s3.amazonaws.com/bp-solarwinds-config/latest/bigpanda-solarwinds-config_linux_amd64.tar.gz)

    [Windows 64-bit](https://s3.amazonaws.com/bp-solarwinds-config/latest/bigpanda-solarwinds-config_windows_amd64.zip)

    [Windows 32-bit](https://s3.amazonaws.com/bp-solarwinds-config/latest/bigpanda-solarwinds-config_windows_386.zip)

    [Mac OS 64-bit](https://s3.amazonaws.com/bp-solarwinds-config/latest/bigpanda-solarwinds-config_darwin_amd64.zip)

2. Extract the archive and open a terminal with a command prompt in the extracted directory.

3. Run `bigpanda-solarwinds-config`.

4. At the prompts, enter your SolarWinds and BigPanda details.

  * SolarWinds Admin credentials
  * URL for the SolarWinds controller
  * BigPanda API Token: `$TOKEN`
  * BigPanda App Key: `$STREAM_ID` 
    
Alternatively, you can pass all the details as command line flags:

    -t, --bigpanda_api_token="": BigPanda API Token
    -k, --bigpanda_app_key="": BigPanda App Key
    -p, --solarwinds_admin_password="": SolarWinds Admin Password
    -u, --solarwinds_admin_user="": SolarWinds Admin User Name
    -a, --solarwinds_api_url="": SolarWinds Orion base URL (For example, 'https://<YOUR_SOLAR_WINDS_SERVER>:17778')   

For example:

    ./bigpanda-solarwinds-config -t $TOKEN -k $STREAM_ID

<!-- section-separator -->

#### Update Alerts to Send Notifications

Built-in SolarWinds alerts send notifications by default. If you have created your own alerts, you must follow these steps for each alert to trigger notifications:

1. While editing the alert, click the **SUMMARY** tab.

2. At the bottom of the page, expand **Alert Integration**.

3. Select the **Integrate alert with other SolarWinds products and subscribers** check box.

4. Select **Use the name of alert as a subject**.

<!-- section-separator -->

#### Success
The next time SolarWinds generates an alert, you'll see it in the Incident Dashboard.

