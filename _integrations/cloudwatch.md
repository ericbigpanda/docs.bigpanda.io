---
layout: integration 
title: "Amazon CloudWatch"
draft: false
type: System Monitoring
---

#### Locate an Appropriate User
In [IAM Management Console](https://console.aws.amazon.com/iam/home?#users), select a user with sufficient permissions to modify CloudWatch alarms (i.e. at least `CloudWatch Full Access` and `Amazon EC2 Read Only Access` policies templates).    
*We need your credentials in order to configure BigPanda as a recipient of your CloudWatch alarms.*

[Click here](http://docs.aws.amazon.com/IAM/latest/UserGuide/ManagingCredentials.html) for further information about IAM users permissions.

<!-- section-separator -->

#### Generate Access Key for BigPanda
* In the user options in the lower pane, navigate to `Access Credentials > Manage Access Keys`.
* Click on `Create Access Key` (located in the bottom right corner).
* Tap on `Show User Security Credentials` in order to reveal the newly created access key details.

<!-- section-separator -->

#### Connect CloudWatch to BigPanda
<!-- app-only-start -->
* Please copy the credentials from the previous step and paste them below.  
* Click on `Retrieve AWS Regions` and select the regions you'd like to include in BigPanda.
* Click on `Configure CloudWatch`.
<!-- include 'integrations/cloudwatch/cloudwatch' -->

<!-- app-only-end -->

<!-- docs-only-start -->

In the BigPanda Application, you'll be able retreive the regions you'd like to include in BigPanda, and configure CloudWatch accordingly.

<!-- docs-only-end -->

<!-- section-separator -->

#### Success
Next time you will have CloudWatch alerts, you will be able to see them in the Incidents tab.
