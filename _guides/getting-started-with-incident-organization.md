---
layout: page
title: "Part 2: Incident Organization"
---

Different teams in your organization have different responsibilities. BigPanda allows you to automatically distribute your incidents into **environments** according to custom rules. Using the environment builder, you'll be able to quickly set up multiple environments for any use. By thinning down the amount of incidents in your feed, you'll be able to divide and conquer your NOC!

By default, all of your incidents can be seen in the preconfigured **All** environment.

![The Default 'All' Environment](/media/AllEnvironment.png)

To create a new environment, click the **New Environment** button.

#### Defining a New Environment

Once you click the **New Environment** button, the **Environment Settings** will open. In this window, you'll be able to define the rules comprising your environment.

![Environment Settings](/media/EnvironmentSettings.png)

The rules that you define in this screen will determine which incidents are included in your environment. You can see a live preview of these incidents on the right side of the screen. The rules construct a simple **and**/**or** boolean expression that is evaluated against the incident properties.
