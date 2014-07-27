---
layout: page
title: "Part 3: Incident Analysis"
category: "Product Tutorial"
date: 2014-07-05 11:30:01
---

BigPanda is an incident management platform for modern Ops teams. With BigPanda, you will prioritize and route your incidents better and faster, while vastly improving your team’s collaboration and processes. **This is part 3 in a series** on Getting Started with BigPanda. This product introduction will help you to get up and running quickly so you can get back to hunting fail-whales and 404 errors.

Most of the ticketing or issue tracking systems that you've been stuck with require you to link related tickets together manually. BigPanda is different. Every incident in BigPanda's incident feed is created automatically. Each one is based on alerts generated in real time by your monitoring stack. Tools like Nagios, New Relic, and more are all there – just about every monitoring tool you can imagine. If it makes alerts for Ops teams, we're working on pulling it in. Then BigPanda aggregates everything together into a single, intelligent incident dashboard.

###Reduce the Noise###

A single production incident often manifests itself in multiple alerts. A disk issue might first cause a disk IO alert. That, in turn, is likely to quickly trigger a series of CPU, memory, database and application alerts. Of course, in this case, you don't want to manage a dozen or more separate issues. They're all connected to the same root problem. For that reason, BigPanda automatically groups related alerts into consolidated, high-level incidents. BigPanda's grouping algorithm leverages hostnames, clusters and applications in order to pull related alerts together. Additionally, the algorithm factors in the time between alerts in order to provide you with unique incident insight.

###Drill into Alert Detail###

Click on any incident in the feed to drill down into it. In the right panel, you will see each of the alerts that compose the incident.


