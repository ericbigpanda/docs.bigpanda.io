---
layout: integration
title: "ServiceNow"
type: Ticket Management
draft: false
---

#### Connect ServiceNow to BigPanda

The ServiceNow integration allows you to easily create ServiceNow incidents from BigPanda incidents.
Use the form below to configure how the ServiceNow incidents should be created.


|Field|Description|Example|
|-----|-----------|-------|
|**ServiceNow URL**|The URL of your ServiceNow account. Go to the ServiceNow dashboard and copy the address before **/navpage.do**|For **https://bigpanda.servicenow.com/navpage.do**  please input **https://bigpanda.servicenow.com**|
|**Username**|The ServiceNow user that will be used to create issues|`bigpandaUser`|
|**Password**|The corresponding ServiceNow password|`123456`|

<!-- app-only-start -->

<!-- include 'integrations/servicenow/servicenow' -->
*All fields are required*

<!-- app-only-end -->

<!-- docs-only-start -->

In the BigPanda Application, you'll be able to set ServiceNow params here.

<!-- docs-only-end -->

<!-- section-separator -->
#### Success
After the form is complete, click on "Configure ServiceNow".
You should be ready to share incidents to ServiceNow.

*Note: If you want to share using other users, you may create another ServiceNow integration with a different target system name.*
