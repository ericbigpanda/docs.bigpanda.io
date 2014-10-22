---
layout: integration 
title: "Icinga (CentOs)"
draft: false
type: System Monitoring
---

<!-- docs-include _integrations/agent-common/install/generic.md:::SOURCE_SYSTEM_NAME=Icinga:::PLATFORM_NAME=Centos -->

<!-- section-separator -->

#### Configure Icinga
Open the main Icinga configuration file (usually `/usr/local/icinga/etc/icinga.cfg` or `/etc/icinga/icinga.cfg`):

    $ sudo vim /usr/local/icinga/etc/icinga.cfg


<!-- docs-include _integrations/agent-common/configure-service/generic.md:::PLATFORM=centos:::SERVICE_NAME=nagios -->* Test that Icinga (usually `nagios` user) has write permissions to the `log_archive_path` folder


<!-- docs-include _integrations/agent-common/configure-service/restart-centos.md:::SERVICENAME=Icinga:::SERVICE_LOWER=icinga -->

<!-- section-separator -->

<!-- docs-include _integrations/agent-common/configure-agent/generic.md:::SOURCE_SYSTEM_NAME=Icinga:::SOURCE_SYSTEM_UPPER=ICINGA:::SOURCE_SYSTEM_LOWER=icinga -->
    
* The log file is usually located at `/usr/local/icinga/var/icinga.log` or `/var/log/icinga/icinga.log`
* The cache file is usually located at `/usr/local/icinga/var/objects.cache` or `/var/cache/icinga/objects.cache`
* The status.dat file is usually located at `/usr/local/icinga/var/status.dat` or `/var/cache/icinga/status.dat`

<!-- docs-include _integrations/agent-common/configure-agent/permissions.md -->

<!-- section-separator -->

<!-- docs-include _integrations/agent-common/start-and-summary/generic.md:::SOURCE_SYSTEM_NAME=Icinga:::PLATFORM=centos -->
