---
layout: integration 
title: "SCOM"
draft: false
type: System Monitoring
---

#### Download the BigPanda SCOM Integration Utility

The `bigpanda-scom-cli` utility is a small, command line application for configuring your BigPanda SCOM integration.

1. Download the compressed archive of the utility for your operating system:

    [Windows 64-bit](https://s3.amazonaws.com/bp-golang-artifacts/bigpanda-scom-cli/master/bigpanda-scom-cli_windows_amd64.zip)

2. Extract the archive. The path it is archived to will be used in **Install BigPanda CLI in SCOM**, step 5.2.

<!-- section-separator -->

#### Set SCOM timezone

SCOM uses the timezone set on the system that SCOM is installed on. Connect to the server SCOM is installed on, check its timezone, and select it below.

<!-- include 'integrations/scom/scom' -->

<!-- section-separator -->

### Set Execution Policy in PowerShell

To run PowerShell scripts we need to change the execution policy to RemoteSigned.

1. Open **PowerShell**.

2. Enter `Set-ExecutionPolicy remotesigned` and press enter.

3. When prompted if you are sure, enter `y` and press enter.

<!-- section-separator -->

### Install BigPanda CLI in SCOM

1. Use same **PowerShell** from last step.

2. Go to the path from step 2.2.

3. Run the following command `./bigpanda-scom-cli.exe install -t $TOKEN -k $STREAM_ID`

**NOTE:** If you are using a HTTP Proxy, run the following instead of step 3:

`./bigpanda-scom-cli install -t $TOKEN -k $STREAM_ID --proxy http://yourproxy.server`

<!-- section-separator -->

#### Success
The next time SCOM generates an alert, you'll see it in the Incident Dashboard.

