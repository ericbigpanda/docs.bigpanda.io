---
layout: integration 
title: "OpsView (Ubuntu)"
draft: false
type: System Monitoring

---

<!-- docs-include _integrations/agent-common/install/generic.md:::SOURCE_SYSTEM_NAME=OpsView:::PLATFORM_NAME=Ubuntu -->

<!-- section-separator -->

#### Configure OpsView
Open the main OpsView configuration file (usually `/usr/local/nagios/etc/nagios.cfg`):

	$ sudo vim /usr/local/nagios/etc/nagios.cfg

<!-- docs-include _integrations/agent-common/configure-service/generic.md:::PLATFORM=ubuntu:::SERVICE_NAME=nagios -->* Test that OpsView (usually `nagios` user) has write permissions to the `log_archive_path` folder

<!-- docs-include _integrations/agent-common/configure-service/restart-ubuntu.md:::SERVICE_LOWER=opsview:::SERVICENAME=OpsView -->

<!-- section-separator -->

<!-- docs-include _integrations/agent-common/configure-agent/generic.md:::SOURCE_SYSTEM_NAME=Icinga:::SOURCE_SYSTEM_UPPER=ICINGA:::SOURCE_SYSTEM_LOWER=icinga -->
    
* The log file is usually located at `/usr/local/nagios/var/nagios.log`
* The cache file is usually located at `/usr/local/nagios/var/objects.cache`

<!-- docs-include _integrations/agent-common/configure-agent/permissions.md -->

<!-- section-separator -->

<!-- docs-include _integrations/agent-common/start-and-summary/generic.md:::SOURCE_SYSTEM_NAME=Icinga:::PLATFORM=ubuntu -->
