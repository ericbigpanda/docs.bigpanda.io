---
layout: integration
title: "JIRA"
type: Ticket Management
draft: true
---

#### Connect JIRA to BigPanda

The JIRA integration allows you to easily create JIRA issues from BigPanda incidents.
Use the form below to configure how the JIRA issues should be created.


|Field|Description|Example|
|-----|-----------|-------|
|**JIRA URL**|The URL of your JIRA account. Go to the JIRA dashboard and copy the address before **/secure/Dashboard.jspa**|For **https://jira.example.com/secure/Dashboard.jspa**  please input **https://jira.example.com**|
|**Project key**|The JIRA key of the project, where a new issue will be created. To find it in JIRA, go to **Projects -> View All Projects**|`BP`|
|**Issue type**|The JIRA issue type for new issues created by BigPanda|`Bug`|
|**Username**|The JIRA user that will be used to create issues|`bigpandaUser`|
|**Password**|The corresponding JIRA password|`123456`|

<!-- app-only-start -->

<!-- include 'integrations/jira/jira' -->
*All the fields are required*

<!-- app-only-end -->

<!-- docs-only-start -->

In the BigPanda Application, you'll be able to set JIRA params here.

<!-- docs-only-end -->

<!-- section-separator -->
#### Success
After the form is complete, click on "Configure JIRA".
You should be ready to share incidents to JIRA.

*Note: If you want to share using other users or other issue types, you may create another JIRA integration with a different target system name.*
