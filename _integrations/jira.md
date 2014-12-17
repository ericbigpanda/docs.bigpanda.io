---
layout: integration 
title: "JIRA"
type: Ticket Management
draft: true
---

#### Contact BigPanda
Support for JIRA is a premium feature. To learn more, contact us at [sales@bigpanda.io](mailto:sales@bigpanda.io?subject=JIRA Integration).

<!-- section-separator -->
#### Connect JIRA to BigPanda

BigPanda sends events to JIRA via their REST API. In order to do that, we need the following details:

|Field|Description|Example|
|-----|-----------|-------|
|**Target system name**|A name for this JIRA integration|`Sales`|
|**JIRA URL**|The URL of JIRA. To get it, go to JIRA dashboard and copy the address before `/secure/Dashboard.jspa`|For dashboard URL: `https://bigpanda.atlassian.net/secure/Dashboard.jspa` the JIRA URL is `https://bigpanda.atlassian.net`|
|**Project key**|This is the key that all of the issues are starting with in the relevant project, to get it, click on **Project** in JIRA top bar, and copy the key that in parentheses of the desired project.|`BP`|
|**Issue type**|The issue type that the issues will be created with.|`Bug`|
|**Username**|The JIRA user that the issues will be created with.|`bigpandaUser`|
|**Password**|Its JIRA password.|`123456`|

<!-- app-only-start -->

<!-- include 'integrations/jira/jira' -->
*All the fields are required*

<!-- app-only-end -->

<!-- docs-only-start -->

In the BigPanda Application, you'll be able to set JIRA params here.

<!-- docs-only-end -->

<!-- section-separator -->
#### Success
When you finished filling out the form above, don't forget to click on "Configure JIRA". After that, you are done, and ready to share incidents to JIRA.

*Note: If you want to share with other users or other issue types, you may create another JIRA integration with different Target system name.*
