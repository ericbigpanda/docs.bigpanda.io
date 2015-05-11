---
layout: integration 
title: "Icinga (Ubuntu)"
draft: false
type: System Monitoring
---

<!-- docs-include _integrations/agent-common/install/local-installation.md:::SOURCE_SYSTEM_NAME=Icinga:::PLATFORM_NAME=Ubuntu:::PLATFORM_LOWER=ubuntu -->

<!-- docs-include _integrations/icinga/common.md -->

<!-- docs-include _integrations/agent-common/configure-service/generic.md:::PLATFORM=ubuntu:::SERVICE_NAME=nagios -->* Test that Icinga (usually `nagios` user) has write permissions to the `log_archive_path` folder

<!-- docs-include _integrations/agent-common/configure-service/restart-ubuntu.md:::SERVICENAME=Icinga:::SERVICE_LOWER=icinga -->

<!-- section-separator -->

<!-- docs-include _integrations/agent-common/configure-agent/nagios.md:::SOURCE_SYSTEM_NAME=Icinga:::SOURCE_SYSTEM_UPPER=ICINGA:::SOURCE_SYSTEM_LOWER=icinga:::SOURCE_SYSTEM_FOLDER=icinga:::LOGFILE=icinga -->
    
<!-- section-separator -->

<!-- docs-include _integrations/agent-common/configure-agent/permissions.md -->

<!-- section-separator -->

<!-- docs-include _integrations/agent-common/start-and-summary/generic.md:::SOURCE_SYSTEM_NAME=Icinga:::PLATFORM=ubuntu -->
