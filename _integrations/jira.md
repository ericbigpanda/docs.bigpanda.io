---
layout: integration
title: "JIRA"
type: Sharing & Ticket Management
draft: false
---

#### Connect JIRA to BigPanda

The JIRA integration allows you to easily create JIRA issues from BigPanda incidents.
Use the form below to configure how the JIRA issues are created.


|Field|Description|Example|
|-----|-----------|-------|
|**JIRA URL**|URL of your JIRA account. Go to the JIRA dashboard and copy the base URL of the address (before **/secure/Dashboard.jspa**).|For **https://jira.example.com/secure/Dashboard.jspa**, enter **https://jira.example.com**|
|**Project key**|JIRA key for the project where BigPanda will create new issues. To find it in JIRA, go to **Projects > View All Projects**.|`BP`|
|**Issue type**|JIRA issue type for new issues created by BigPanda.|`Bug`|
|**Username**|JIRA user that BigPanda will use to create issues. **Note:** You must enter a JIRA user name, not an email address.|`bigpandaUser`|
|**Password**|Password for the JIRA user account.|`123456`|

<!-- app-only-start -->

<!-- include 'integrations/jira/jira' -->
*All fields are required*

<!-- app-only-end -->

<!-- docs-only-start -->

In the BigPanda Application, you'll be able to set JIRA params here.

<!-- docs-only-end -->

<!-- section-separator -->
#### Success
After the form is complete, click **Configure JIRA**.
You should be ready to share incidents to JIRA.

**Note:** If you want to create issues in JIRA with a different user or issue type, you can create another JIRA integration with a different integration name.
