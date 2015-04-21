---
layout: integration
title: "ServiceNow"
type: Sharing & Ticket Management
draft: false
---

#### Install the BigPanda Application in ServiceNow

In the ServiceNow instance, navigate to `System Application > Install Application` and install the BigPanda application.

<!-- section-separator -->
#### Create a User for BigPanda in ServiceNow

* In ServiceNow, under `User Administration > Users`, click on `New`
* Fill out the New User form (make sure to include the following fields):  
  * `User ID` - bigpanda  
  * `First name` - BigPanda  
  * `Password` - <you may choose one>  
  * **Make sure that the `Active` checkbox is checked**  
* Click on Submit
* Find the user by writing "bigpanda" in the filter box above the User ID column
* Go to Roles section (the first section) and click on Edit...
* Filter "x\_bip\_panda\_user" on the left table and then double click on it to move it to the right table
* Click on Save

<!-- section-separator -->
#### Connect ServiceNow to BigPanda

The ServiceNow integration allows you to easily create ServiceNow incidents from BigPanda incidents. Use the form below to configure how the ServiceNow incidents should be created.

|Field|Description|Example|
|-----|-----------|-------|
|**ServiceNow URL**|The URL of your ServiceNow account. Go to the ServiceNow dashboard and copy the address before **/navpage.do**|For **https://bigpanda.servicenow.com/navpage.do**  please input **https://bigpanda.servicenow.com**|
|**Username**|A ServiceNow user with `rest_service` role that will be used to create issues|`bigpandaUser`|
|**Password**|The corresponding ServiceNow password|`123456`|

<!-- app-only-start -->

<!-- include 'integrations/servicenow/servicenow' -->
*All fields are required*

<!-- app-only-end -->

<!-- docs-only-start -->

Go to the in-app integration wizard to configure your ServiceNow parameters.

<!-- docs-only-end -->

<!-- section-separator -->
#### Success
After the form is complete, click on "Configure ServiceNow".
You should be ready to share incidents to ServiceNow.

*Note: If you want to share using other users, you may create another ServiceNow integration with a different target system name.*
