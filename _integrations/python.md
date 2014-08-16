---
layout: integration 
title: "Python"
draft: false
type: API
---

#### Install the BigPanda Python module
Simply run:

    pip install bigpanda

<!-- section-separator -->

#### Notify BigPanda when a deployment starts
Use the bigpanda module in your scripts to send a notification at the start of a deployment:

    import bigpanda

    bigpanda_client = bigpanda.Client(api_token="$TOKEN")
    deployment = bigpanda_client.deployment(hosts=hostname, component=app_name, version=app_version).start()

**Note:** Don't forget to replace `app_name`, `app_version` and `hostname` with the right arguments.

<!-- section-separator -->

#### Notify BigPanda when a deployment ends
Use the bigpanda module in your scripts to send a notification at the end of a deployment:

    deployment.success()

or in case of failure:
    
    deployment.failure()

**Note:** Deployments will be shown as in-progress until you send this notification.
