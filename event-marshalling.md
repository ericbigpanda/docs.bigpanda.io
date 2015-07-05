---
layout: page
title: "Event Marshalling"
static_page: true
---

Usually monitoring systems will send multiple events that indicate a problem with a specific device. Each event might contain a status change, additional information about the alert, etc. When notified via standard channels, such as email or SMS, one must remember the details from previous notifications to understand the entire lifecycle of the alert.

BigPanda makes this easier buy combining the information from all notifications into one alert object.

#### How does that work
Each event is given a unique identifier based on some properties of the original event. For example, events from the Nagios monitoring system are identified by their **host_name** and **service_description** properties. Events with the same identifier will not always be combined into the same alert: if the alert is still active (i.e. not resolved), every new event will join that alert; however, if the alert is already resolved, it will be re-opened by new events for a period of up to 48 hours. After that 48 hour period, a new alert will be created for subsequent events.
