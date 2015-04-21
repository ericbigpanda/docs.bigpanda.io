---
layout: integration 
title: "Nagios (Debian)"
draft: false
type: System Monitoring

---

<!-- docs-include _integrations/agent-common/install/generic.md:::SOURCE_SYSTEM_NAME=Nagios:::PLATFORM_NAME=Debian:::PLATFORM_LOWER=debian -->

<!-- section-separator -->

#### Configure Nagios
Open the main Nagios configuration file (usually `/usr/local/nagios/etc/nagios.cfg` or `/etc/nagios3/nagios.cfg`):

    $ sudo vim /usr/local/nagios/etc/nagios.cfg

<!-- docs-include _integrations/agent-common/configure-service/generic.md:::PLATFORM=debian:::SERVICE_NAME=nagios -->* Test that `nagios` user has write permissions to the `log_archive_path` folder

<!-- docs-include _integrations/agent-common/configure-service/restart-debian.md:::SERVICENAME=Nagios:::SERVICE_LOWER=nagios -->

<!-- section-separator -->

<!-- docs-include _integrations/agent-common/configure-agent/nagios.md:::SOURCE_SYSTEM_NAME=Nagios:::SOURCE_SYSTEM_UPPER=NAGIOS:::SOURCE_SYSTEM_LOWER=nagios:::SOURCE_SYSTEM_FOLDER=nagios3:::LOGFILE=nagios -->

<!-- section-separator -->

<!-- docs-include _integrations/agent-common/configure-agent/permissions.md -->

<!-- section-separator -->

<!-- docs-include _integrations/agent-common/start-and-summary/generic.md:::SOURCE_SYSTEM_NAME=Nagios:::PLATFORM=debian -->
