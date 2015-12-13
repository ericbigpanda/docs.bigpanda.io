---
layout: integration 
title: "SolarWinds"
draft: false
type: System Monitoring
---

#### Download the BigPanda SolarWinds integrator Utility

`bigpanda-solarwinds-config` is a small command line application that will configure your BigPanda SolarWinds integration.

1. Download the compressed archive according to your operating system:

    [Linux 64bit](https://s3.amazonaws.com/bp-solarwinds-config/latest/bigpanda-solarwinds-config_linux_amd64.tar.gz)
    [Windows 64bit](https://s3.amazonaws.com/bp-solarwinds-config/latest/bigpanda-solarwinds-config_windows_amd64.zip)
    [Windows 32bit](https://s3.amazonaws.com/bp-solarwinds-config/latest/bigpanda-solarwinds-config_windows_386.zip)
    [MacOs 64bit](https://s3.amazonaws.com/bp-solarwinds-config/latest/bigpanda-solarwinds-config_darwin_amd64.zip)

2. Extract the archive and open a terminal / command prompt to the extracted directory

3. Run `bigpanda-solarwinds-config`

    This application will prompt for the SolarWinds details (Credentials and URL Address), and the BigPanda details (App Key - `$STREAM_ID` and API Token - `$TOKEN`).
    You can also pass all these details as command line flags:

```
-t, --bigpanda_api_token="": BigPanda API Token
-k, --bigpanda_app_key="": BigPanda App Key
-p, --solarwinds_admin_password="": SolarWinds Admin Password
-u, --solarwinds_admin_user="": SolarWinds Admin User
-a, --solarwinds_api_url="": SolarWinds Orion API Url (E.g: 'https://<YOUR_SOLAR_WINDS_SERVER>:17778')   
```

#### Example

```
./bigpanda-solarwinds-config -t $TOKEN -k $STREAM_ID
```

<!-- section-separator -->

#### Update your alert to send notifications

To get notifications on alerts, mark the alert as "Alert Integration". Built-in SolarWinds alerts already send notifications. If you have created your own alerts, follow these steps for each alert to trigger notifications:

1. While editing the alert, click the **SUMMARY** tab.
2. At the bottom of the page, expand **Alert Integration**.
3. Select the **Integrate alert with other SolarWinds products and subscribers** check box.
4. Select **Use the name of alert as a subject**.

<!-- section-separator -->

#### Success
Next time you have SolarWinds alerts, you'll see them in the BigPanda Incident Dashboard.

