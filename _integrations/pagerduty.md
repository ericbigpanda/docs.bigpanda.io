---
layout: integration
title: "PagerDuty"
type: Sharing & Ticket Management
draft: false
---


#### Get a PagerDuty Service Token for BigPanda
The PagerDuty integration allows you to easily share BigPanda incidents to create an incident in PagerDuty.

* Access PagerDuty with a privileged user
* Under **Configuration > Services** click on **Add New Service**
* Give it a name, for example: `BigPanda - Billing`
* Choose the desired escalation policy
* In the **Integration Type**, choose **Use our API directly**
* Click on **Add Service**
* Copy the **Service API Key** value to the form below

<!-- section-separator -->
#### Get the PagerDuty Subdomain

In PagerDuty app, copy the company subdomain from the browser address bar. Paste it into the subdomain field in the form below. For example, for **https://bigpanda.pagerduty.com/** the company subdomain is `bigpanda`.

<!-- section-separator -->
#### Get a PagerDuty REST API Key for BigPanda

* Still in PagerDuty app, go to **Configuration > API Access**
* On the right pane, write `BigPanda` in the description and check the **Read-only API Key** checkbox
* Click on **Create Key**
* Copy the just created **API Key** value from the table to the form below

*The same REST API Key can be used for all of the BigPanda <-> PagerDuty integrations.*

<!-- section-separator -->
#### Configure PagerDuty in BigPanda


<!-- app-only-start -->

<!-- include 'integrations/pagerduty/pagerduty' -->

<!-- app-only-end -->

<!-- docs-only-start -->

In the BigPanda Application, you'll be able to set PagerDuty params here.

<!-- docs-only-end -->

<!-- section-separator -->
#### Success
Submit the form. You should be ready to share incidents to PagerDuty.

*Note: If you want to share to other services or escalation policies, you may create another PagerDuty integration with a different system name.*
