---
layout: integration 
title: "Ruby"
draft: false
type: API
---

#### Install the BigPanda Ruby module
Simply run:

    gem install bigpanda

<!-- section-separator -->

#### Notify BigPanda when a deployment starts

**Note:** Deployments will be shown as in-progress until you send end of deployment notification.

Use the bigpanda module in your scripts to send a notification at the start of a deployment:

    require 'bigpanda'

    bigpanda = BigPanda::Client.new(access_token: '$TOKEN')
    bigpanda.deployment_start({hosts: [hostname], component: app_name, version: app_version})

**Note:** Don't forget to replace `app_name`, `app_version` and `hostname` with the right arguments.

<!-- section-separator -->

#### Notify BigPanda when a deployment ends
Use the bigpanda module in your scripts to send a notification at the end of a deployment:


    bigpanda.deployment_end({ hosts: [hostname], component: app_name, version: app_version })

or in case of failure:
    
    bigpanda.deployment_end({ status: 'failure', hosts: [hostname], component: app_name, version: app_version })

**Note:** Don't forget to replace `app_name`, `app_version` and `hostname` with the right arguments.
