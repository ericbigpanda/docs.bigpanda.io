---
layout: integration 
title: "Icinga (Debian)"
draft: false
type: System Monitoring
---

<!-- docs-include _integrations/agent-common/install/generic.md:::SOURCE_SYSTEM_NAME=Icinga:::PLATFORM_NAME=Debian:::PLATFORM_LOWER=debian -->

<!-- section-separator -->

#### Configure Icinga
Open the main Icinga configuration file (usually `/usr/local/icinga/etc/icinga.cfg` or `/etc/icinga/icinga.cfg`):

    $ sudo vim /usr/local/icinga/etc/icinga.cfg


<!-- docs-include _integrations/agent-common/configure-service/generic.md:::PLATFORM=debian:::SERVICE_NAME=nagios -->* Test that Icinga (usually `nagios` user) has write permissions to the `log_archive_path` folder


<!-- docs-include _integrations/agent-common/configure-service/restart-debian.md:::SERVICENAME=Icinga:::SERVICE_LOWER=icinga -->

<!-- section-separator -->

<!-- docs-include _integrations/agent-common/configure-agent/generic.md:::SOURCE_SYSTEM_NAME=Icinga:::SOURCE_SYSTEM_UPPER=ICINGA:::SOURCE_SYSTEM_LOWER=icinga:::SOURCE_SYSTEM_FOLDER=icinga:::LOGFILE=icinga -->
    
<!-- docs-include _integrations/agent-common/configure-agent/permissions.md -->

<!-- section-separator -->

<!-- docs-include _integrations/agent-common/start-and-summary/generic.md:::SOURCE_SYSTEM_NAME=Icinga:::PLATFORM=debian -->
