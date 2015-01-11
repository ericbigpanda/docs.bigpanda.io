---
layout: page
title: "How do I configure Pingdom for incident alerts checks?"
static_page: true
---

This tutorial will walk you through configuring BigPanda on Pingdom for "Incident Alerts" checks:

### Create "BigPanda Notification" alerting endpoint if not exist
* Go to ["Alerting -> Alerting Endpoints"](https://my.pingdom.com/newims/externalendpoints).
* Click on "ADD ALERTING ENDPOINT" (top right)
* Fill the fields as below:
  * **Name**: BigPanda Notification
  * Click on "ADD CONTACT METHOD"
    * **How should we contact you?**: Email
    * **Email address**: <copy the email address from BigPanda tutorial (section 3)>
    * Click on "Add"
  * **Alert message**: "Old message format"
  * Click on "Save Settings"

### Sync all the alert policies with "BigPanda Notification"
* Go To ["Alerting -> Alert Policies"](https://my.pingdom.com/newims/alertgroups)
* For every policy:
  * Edit
  * Add "BigPanda Notification" as a CC to the policy

Once you've done all the alerts from Pingdom will arrive to BigPanda.
