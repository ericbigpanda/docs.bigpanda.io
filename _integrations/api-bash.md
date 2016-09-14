---
layout: integration 
title: "Alerts REST API Bash Wrapper"
type: API
draft: false
---

#### Install the BigPanda Shell Utility
Run the following commands to install the utility.

For **Debian or Ubuntu**:

    $ echo deb http://repos.bigpanda.io/deb `lsb_release -c -s` main | sudo tee /etc/apt/sources.list.d/bigpanda.list
    $ curl https://repos.bigpanda.io/config/bigpanda.pub | sudo apt-key add -
    $ sudo apt-get update
    $ sudo apt-get install bigpanda-utils

For **RedHat or CentOS**:

    $ sudo wget http://repos.bigpanda.io/config/bigpanda.repo -O /etc/yum.repos.d/bigpanda.repo
    $ sudo yum install bigpanda-utils


For more information about the utility, run:
    
    bigpanda-alert --help

<!-- section-separator -->

#### Send an Alert
Use the bigpanda-alert utility in your scripts to send an alert about a host, application, service, or other monitored object. You have the option to include the specific check on that host, application, or service.

    BP_API_TOKEN=$TOKEN BP_APP_KEY=$STREAM_ID bigpanda-alert $STATUS $HOST $CHECK

STATUS can be one of:

- `ok`
- `warn`
- `crit`
- `ack`
