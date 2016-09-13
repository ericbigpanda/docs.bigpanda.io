---
layout: integration 
title: "Ruby"
draft: false
type: API
---

#### Install the BigPanda Ruby Module
Run the following command:

    gem install bigpanda

<!-- section-separator -->

#### Notify BigPanda When a Deployment Starts

**Note:** Deployments appear as in-progress until you send a matching end notification.

Use the bigpanda module in your scripts to send a notification at the start of a deployment.

    require 'bigpanda'

    bigpanda = BigPanda::Client.new(access_token: '$TOKEN')
    bigpanda.deployment_start({hosts: [hostname], component: app_name, version: app_version})

**Note:** You must replace `app_name`, `app_version` and `hostname` with the correct values for your deployment.

<!-- section-separator -->

#### Notify BigPanda When a Deployment Ends
Use the bigpanda module in your scripts to send a notification at the end of a deployment.


    bigpanda.deployment_end({ hosts: [hostname], component: app_name, version: app_version })

Or, in case of failure:
    
    bigpanda.deployment_end({ status: 'failure', hosts: [hostname], component: app_name, version: app_version })

**Note:** You must replace `app_name`, `app_version` and `hostname` with the correct values for your deployment.
