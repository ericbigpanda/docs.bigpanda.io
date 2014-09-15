---
layout: integration 
title: "Alerts REST API Bash Wrapper"
type: API
draft: false
---

#### Install the BigPanda Shell utilities
Run the following commands to install the utility for Debian/Ubuntu:

    $ echo deb http://repos.bigpanda.io/deb `lsb_release -c -s` main | sudo tee /etc/apt/sources.list.d/bigpanda.list
    $ curl https://repos.bigpanda.io/config/bigpanda.pub | sudo apt-key add -
    $ sudo apt-get update
    $ sudo apt-get install bigpanda-utils

Run the following commands to install the utility for RedHat/CentOS:

    $ sudo wget http://repos.bigpanda.io/config/bigpanda.repo -O /etc/yum.repos.d/bigpanda.repo
    $ sudo yum install bigpanda-utils

For more details about the utility, run:
    
    bigpanda-alert --help

<!-- section-separator -->

#### Send an alert
Use the bigpanda-alert utility in your scripts to send an alert about a host, application, service etc. You can also give an optional specific check on that host, application or service.

    BP_API_TOKEN=$TOKEN BP_APP_KEY=$STREAM_ID bigpanda-alert $STATUS $HOST $CHECK

STATUS can be one of:
- ok
- warn
- crit
- ack
