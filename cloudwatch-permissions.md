---
layout: page
title: "CloudWatch Permissions"
date: 2014-07-03 11:30:01
---

Connecting BigPanda with CloudWatch requires an IAM user with EC2 read access and certain CloudWatch write permissions. The easiset way to configure such as user is by attaching  to it the following User Policy templeates: `CloudWatch Full Access` and `Amazon EC2 Read Only Access`.

There are two reasons BigPanda requires write access to CloudWatch:

* BigPanda creates an SNS topic to which all CloudWatch alerts will be sent and forwarded to our backend servers.
* Once the SNS topic is created BigPanda automatically and periodically sets it on all configured alerts.

In case it's not possible to give full access persmissions, you are required to attach at least the following policy:  

```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "Stmt1406573498000",
      "Effect": "Allow",
      "Action": [
        "sns:CreateTopic",
        "sns:GetTopicAttributes",
        "sns:ListTopics",
        "sns:Subscribe"
      ],
      "Resource": [
        "*"
      ]
    },
    {
      "Sid": "Stmt1406573528000",
      "Effect": "Allow",
      "Action": [
        "cloudwatch:PutMetricAlarm"
      ],
      "Resource": [
        "*"
      ]
    }
  ]
}
```
