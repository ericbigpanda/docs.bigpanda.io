---
layout: integration 
title: "Python"
draft: false
type: API
---

#### Install the BigPanda Python Module
Run the following command:

    pip install bigpanda

<!-- section-separator -->

#### Notify BigPanda When a Deployment Starts
Use the bigpanda module in your scripts to send a notification at the start of a deployment.

    import bigpanda

    bigpanda_client = bigpanda.Client(api_token="$TOKEN")
    deployment = bigpanda_client.deployment(hosts=hostname, component=app_name, version=app_version).start()

**Note:** You must replace `app_name`, `app_version` and `hostname` with the correct values for your deployment.

<!-- section-separator -->

#### Notify BigPanda When a Deployment Ends
Use the bigpanda module in your scripts to send a notification at the end of a deployment.

    deployment.success()

Or, in case of failure:
    
    deployment.failure()

**Note:** Deployments appear as in-progress until you send a matching end notification.
