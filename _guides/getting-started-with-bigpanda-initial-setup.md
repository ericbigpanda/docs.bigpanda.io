---
layout: page
title: "Part 1 - Initial Setup"
---

BigPanda is an incident management platform for Modern Ops teams. Organize, prioritize and triage your incidents faster and more intelligently than ever before. Vastly improve your team's collaboration around Ops alerts and events. **The following guide is the first in our series** on getting started with BigPanda's incident feed. This product introduction will help you to get up and running quickly so you can get back to fixing the world's broken stuff.

To get started, you should first integrate your monitoring systems with BigPanda. After integrating your systems, you will be able to see and manage your alerts from within the BigPanda interface.

During initial login, you will be prompted to integrate your first system. Clicking the button will open the **Integrations** page:

![The BigPanda Integrations Window](/media/IntegrationsWindow.png)

Clicking one of the buttons will open the instructions window. Follow these instructions to setup your first integration.

#### Types of Integrations

There are 3 types of integrations in BigPanda: **Monitoring**, **Deployments** and **Sharing & Ticket Management**.

Monitoring integrations allow BigPanda to receive alerts from your different monitoring systems; most users would start by integrating these systems.

Deployments allow you to see changes taking place in your environment within BigPanda.

Sharing & Ticket Management integrations allow you to share incidents from BigPanda with your co-workers through other systems - for example, opening JIRA tickets, sending Slack notifications, and more.

#### Viewing Your Integrations

Once you've followed the instructions to configure your integration, it will be added to the right pane of the **Integrations** page:

![Existing Integrations](/media/IntegrationStatus.png){: style="height: 500px; width: auto" }

This pane allows you to see the status of the integration. A "Pending" label with an orange indicator means that the integration has been configured, but no data has been received from it yet; an "Installed" label with a green indicator means everything is working properly.

In case you've configured multiple integrations of the same type, clicking on the title of the integration will allow you to see the status of each one. 

Clicking on a specific instance of an integration will allow you to review the instructions for configuring it. If you aren't satisfied with the name you gave an integration - you could also rename it.

![Rename Integration](/media/RenameIntegration.png){: style="height: 400px; width: auto" }
