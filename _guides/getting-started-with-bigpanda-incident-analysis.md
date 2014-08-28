---
layout: page
title: "Part 3: Incident Analysis"
---

Most of the ticketing or issue tracking systems that you've been stuck with require you to link related tickets together manually. BigPanda is different. Every incident in BigPanda's incident feed is created automatically. Each one is based on alerts generated in real time by your monitoring stack. Tools like Nagios, New Relic, and more are all there – just about every monitoring tool you can imagine. If it makes alerts for Ops teams, we're working on pulling it in. Then BigPanda aggregates everything together into a single, intelligent incident dashboard.

#### Reduce the Noise
A single production incident often manifests itself in multiple alerts. A disk issue might first cause a disk IO alert. That, in turn, is likely to quickly trigger a series of CPU, memory, database and application alerts. Of course, in this case, you don't want to manage a dozen or more separate issues. They're all connected to the same root problem. For that reason, BigPanda automatically groups related alerts into consolidated, high-level incidents. BigPanda's grouping algorithm leverages hostnames, clusters and applications in order to pull related alerts together. Additionally, the algorithm factors in the time between alerts in order to provide you with unique incident insight.

#### Drill into Alert Detail
Click on any incident in the feed to drill down into it. In the right panel, you will see each of the alerts that compose the incident.

![IncidentAnalysis](/media/IncidentAnalysis.png)

Clicking on any alert in the right panel will give you even more information about the alert. Full time and duration information as well as any of the tags provided by the source monitoring tool are all at your fingertips.
![IncidentsSource](/media/IncidentAnalysis_Source.png)
{: .not-responsive}

#### Visualize the Incident Lifecycle
Next, click on the <strong>lifecycle</strong> button at the bottom of the right pane to visualize the timeline of an incident. Each dot on the timeline represents a status change in one of the incident's alerts. With the BigPanda lifecycle timeline, you can quickly understand how an incident has unfolded. This is light-years faster than sifting through a few dozen alert messages in your email inbox and trying to piece the fragments together manually.

![Lifecycle](/media/LifeCycle.png)

BigPanda speeds up the process of understanding incidents. Automatically-consolidated alerts in real-time, as they unfold are combined with powerful alert lifecycle visibility. This makes BigPanda the best way for Modern Ops teams to manage and resolve issues. Next, in part 4 of this series, we'll discuss how to [bring your whole team into the picture](getting-started-with-bigpanda-incident-assignment.html) so that you're collaborating together at maximum strength.

