---
layout: integration 
title: "Jenkins"
draft: false
type: Deployment
---

#### Install the BigPanda Jenkins Plugin

In Jenkins, Enter ```Manage Jenkins > Manage Plugins > Available```.
Find the plugin ```BigPanda Notifier``` mark the checkbox to the left of the row, then click ```Install without restart``` at the bottom.

<!-- section-separator -->

#### Configuring  the global Jenkins settings

In Jenkins, Enter ```Manage Jenkins > Configure System```
At the ```BigPanda Notifier``` section, enter ```$TOKEN``` and click save

<!-- section-separator -->

#### Adding a BigPanda notification to a Jenkins job

Enter your job in Jenkins, and click ```Configure```
At the bottom, add a ```Post Build Action``` and choose ```Notify BigPanda``` from the dropdown.

<!-- section-separator -->

#### Optional - Controlling Multi-Configuration Jobs

By default, the BigPanda Jenkins Notification Plugin will send the label of each downstream job in the Multi-Configuration job as a host name to BigPanda.

If you wish, you can click the ```Advanced``` button to set that the Jenkins Slave node names will be sent as host instead.
