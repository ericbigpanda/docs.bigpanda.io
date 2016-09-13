---
layout: integration 
title: "Alerts REST API Python Wrapper"
type: API
draft: false
---

#### Install the BigPanda Python Module
Run the following command:

    pip install bigpanda

For more detailed information, refer to the module documentation by running `help(bigpanda)`.

<!-- section-separator -->

#### Create and Send a New Alert Object
Create a new alert object that decribes the status of a host, application, service, or other monitored object. You have the option to include the specific check on that host, application, or service.

    import bigpanda
 
    bigpanda_client = bigpanda.Client(api_token="$TOKEN", app_key="$STREAM_ID")
    alert = bigpanda_client.alert(status, hostname, check_name)
    alert.send()

Status can be one of:

- `ok`
- `warn`
- `crit`
- `ack`

