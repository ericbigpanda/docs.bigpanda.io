---
layout: page
title: "Part 1: Initial Setup"
---

BigPanda is an incident management platform for modern Ops teams. Organize, prioritize, and triage your incidents faster and more intelligently than ever before. Vastly improve your team's collaboration on Ops alerts and events. The following guide is the first in our series on getting started with BigPanda's incident feed. This product introduction will help you to get up and running quickly so you can get back to fixing the world's broken stuff.

To get started, integrate your monitoring systems with BigPanda. After integrating your systems, you can see and manage your alerts from within the BigPanda interface.

During initial login, you are prompted to integrate your first system. Clicking the button opens the **Integrations** page.

![The BigPanda Integrations Window](/media/IntegrationsWindow.png)

Click any integration to open the instructions. Follow the instructions to set up your first integration.

#### Types of Integrations

BigPanda offers several types of integrations:

* **Monitoring** - allows BigPanda to receive alerts from your monitoring systems. Many users start by integrating these systems.
* **Deployments** - allows you to see changes taking place in your environment from within BigPanda.
* **Sharing & Ticket Management** - allows you to share incidents from BigPanda with your co-workers through other systems. For example, open JIRA tickets or send Slack notifications.

#### Viewing Your Integrations

After you configure an integration, it is added to the right pane on the **Integrations** page. This pane shows the status of the integration. A **Pending** label with an orange indicator means that the integration has been configured, but no data has been received from it yet. An **Installed** label with a green indicator means that everything is working properly.

![Existing Integrations](/media/IntegrationStatus.png){: style="height: 500px; width: auto" }

If you've configured multiple integrations of the same type, click the title of the integration to see the status of each one. 

Click a specific instance of an integration to review the instructions for configuring it or to change the name.

![Rename Integration](/media/RenameIntegration.png){: style="height: 400px; width: auto" }
