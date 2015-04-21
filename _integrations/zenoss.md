---
layout: integration 
title: "Zenoss (RedHat)"
draft: false
type: System Monitoring

---

<!-- docs-include _integrations/agent-common/install/generic.md:::SOURCE_SYSTEM_NAME=Zenoss:::PLATFORM_NAME=RedHat:::PLATFORM_LOWER=redhat -->

<!-- section-separator -->

#### Configure the BigPanda Agent
Generate the agent's configuration file:

    $ sudo bigpanda-config --init --token $TOKEN
    $ sudo bigpanda-config --add zenoss --app-key $STREAM_ID

When prompted, specify the url of the Zenoss web interface and a valid username and password.

*Note: You may want to create a dedicated user for BigPanda, the required role is `ZenUser`.*

<!-- section-separator -->

<!-- docs-include _integrations/agent-common/start-and-summary/generic.md:::SOURCE_SYSTEM_NAME=Zenoss:::PLATFORM=redhat -->
