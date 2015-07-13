---
layout: page
title: "Part 5: Incident Analysis"
---

Most ticketing or issue tracking systems require you to manually link related tickets together. BigPanda is different. Every incident in BigPanda's incident feed is created automatically based on alerts generated in real time by your monitoring stack.  BigPanda aggregates alerts from all your monitoring systems - tools like Nagios, New Relic, and more - into a single, intelligent incident dashboard.

#### Reduce the Noise
A single production incident often manifests itself in multiple alerts. A disk issue might first cause a disk IO alert that, in turn, triggers a series of CPU, memory, database, and application alerts. In this case, you don't want to manage a dozen or more separate issues when they're all connected to the same root problem. BigPanda automatically groups related alerts into consolidated, high-level incidents. BigPanda's grouping algorithm leverages hostnames, clusters, and applications to pull together related alerts. Additionally, the algorithm factors in the time between alerts to provide you with unique incident insight.


#### Drill into Incident Detail
The incident feed shows basic information about each incident:

* Status indicator. The colored ribbon on the left indicates the incident status, which is determined by the most severe status of the related alerts.
* Number of active alerts. An alert is considered active when it is in the <strong>Critical</strong> or <strong>Warning</strong> state.
* Type (such as Nagios or Zabbix) and name (such as Production) of the integration the alerts came from.
* Summary of the subjects (such as hosts or applications) that are included in the incident.
* Summary of the symptoms (such as checks or metrics) that are included in the incident.
* Time since the last change to the incident. This calculation includes status changes on related alerts and the addition of new alerts to the incident.

Click any incident in the feed to drill down into the details. In the right panel, you can see each of the alerts that compose the incident. For each alert, you can see the status, description, duration (time since first event), and the last time the status changed. If the alert contains any links, a small link icon appears, and you can click it to view more information.

![IncidentAnalysis](/media/IncidentAnalysis.png){: style="height: auto; width: 635px"}
{: .not-responsive }

#### Visualize the Incident Lifecycle
In the top right of the right pane, click <strong>Timeline</strong> to visualize the lifecycle of the incident. Each dot on the timeline represents a status change in one of the related alerts. With the BigPanda timeline, you can quickly understand how the incident has unfolded without sifting through dozens of alert messages in your email inbox and trying to piece together the fragments manually.

![Lifecycle](/media/LifeCycle.png)

BigPanda speeds up the process of understanding incidents by automatically consolidating alerts in real-time, as they unfold, and providing powerful alert lifecycle visibility. This makes BigPanda the best way for modern Ops teams to manage and resolve issues.

