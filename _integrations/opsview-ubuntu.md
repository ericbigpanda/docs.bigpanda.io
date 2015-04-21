---
layout: integration 
title: "OpsView (Ubuntu)"
draft: false
type: System Monitoring

---

<!-- docs-include _integrations/agent-common/install/generic.md:::SOURCE_SYSTEM_NAME=OpsView:::PLATFORM_NAME=Ubuntu:::PLATFORM_LOWER=ubuntu -->

<!-- section-separator -->

#### Configure OpsView
Open the main OpsView configuration file (usually `/usr/local/nagios/etc/nagios.cfg`):

	$ sudo vim /usr/local/nagios/etc/nagios.cfg

<!-- docs-include _integrations/agent-common/configure-service/generic.md:::PLATFORM=ubuntu:::SERVICE_NAME=nagios -->* Test that OpsView (usually `nagios` user) has write permissions to the `log_archive_path` folder

<!-- docs-include _integrations/agent-common/configure-service/restart-ubuntu.md:::SERVICE_LOWER=opsview:::SERVICENAME=OpsView -->

<!-- section-separator -->

<!-- docs-include _integrations/agent-common/configure-agent/nagios.md:::SOURCE_SYSTEM_NAME=OpsView:::SOURCE_SYSTEM_UPPER=OPSVIEW:::SOURCE_SYSTEM_LOWER=opsview:::SOURCE_SYSTEM_FOLDER=nagios:::LOGFILE=nagios -->
    
<!-- docs-include _integrations/agent-common/configure-agent/permissions.md -->

<!-- section-separator -->

<!-- docs-include _integrations/agent-common/start-and-summary/generic.md:::SOURCE_SYSTEM_NAME=OpsView:::PLATFORM=ubuntu -->
