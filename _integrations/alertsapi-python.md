---
layout: integration 
title: "Alerts REST API Python Wrapper"
type: API
draft: false
---

#### Install the BigPanda Python module
Run:

    pip install bigpanda

For more detailed information, refer to the module documentation (`help(bigpanda)`)

<!-- section-separator -->

#### Create and send a new alert object
Create a new alert objects decribing the status of a host, application, service etc. You can also give an optional specific check on that host, application or service.

    import bigpanda
 
    bigpanda_client = bigpanda.Client(api_token="$TOKEN", app_key="$STREAM_ID")
    alert = bigpanda_client.alert(status, hostname, check_name)
    alert.send()

Status can be one of:
- ok
- warn
- crit
- ack

