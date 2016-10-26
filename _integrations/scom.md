---
layout: integration 
title: "SCOM"
draft: false
type: System Monitoring
---

#### Download the BigPanda SCOM Integration Utility

The `bigpanda-scom-cli` utility is a small, command line application for configuring your BigPanda SCOM integration.

1. Download the compressed archive of the utility:

    [Windows 64-bit](https://s3.amazonaws.com/bp-golang-artifacts/bigpanda-scom-cli/master/bigpanda-scom-cli_windows_amd64.zip)

2. Extract the archive, and note the path to the extracted directory. You will use it to install the utility in step 5.

<!-- section-separator -->

#### Set the SCOM Time Zone

SCOM uses the time zone of the server it is installed on. Connect to the SCOM server and check the time zone settings. Select the same time zone in the field below.

<!-- include 'integrations/scom/scom' -->

<!-- section-separator -->

### Set the Execution Policy in PowerShell

To install the utility, you must change the PowerShell execution policy to `RemoteSigned`.

1. On the SCOM server, open **PowerShell**.

2. Run the following command.

    `Set-ExecutionPolicy remotesigned`

3. At the prompt, enter `y` to confirm the change, and press **Enter**.

<!-- section-separator -->

### Install the BigPanda SCOM Integration Utility

1. In the same PowerShell console, go to the path where you extracted the utility in step 2.

3. Run the following command.
 
    `./bigpanda-scom-cli.exe install -t $TOKEN -k $STREAM_ID`

    **Note:** If you're using an HTTP Proxy, run the following command instead. You must replace `<Proxy server URL>` with the full URL to your proxy server.

    `./bigpanda-scom-cli install -t $TOKEN -k $STREAM_ID --proxy <Proxy server URL>`

<!-- section-separator -->

#### Success
The next time SCOM generates an alert, you'll see it in the Incident Dashboard.

