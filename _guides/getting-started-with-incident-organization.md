---
layout: page
title: "Part 3: Incident Organization"
---

Different teams in your organization have different responsibilities. BigPanda allows you to automatically distribute your incidents into **Environments** according to custom rules. Using the Environment builder, you can quickly set up multiple Environments for any use. By thinning down the amount of incidents in your feed, you'll be able to divide and conquer your NOC!

By default, all of your incidents are included in the **All** Environment.

![The Default 'All' Environment](/media/AllEnvironment.png){: style="max-height: 400px; width: auto"}

#### Defining a New Environment

Click **New Environment**. A settings window opens where you can define the rules that determine which incidents are included in your Environment.

![Environment Settings](/media/EnvironmentSettings.png)

The rules construct a simple **and**/**or** boolean expression that is evaluated against the incident properties. You can see a live preview of these incidents in the right pane.
