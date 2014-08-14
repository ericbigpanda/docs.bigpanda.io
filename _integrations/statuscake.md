---
layout: integration 
title: "StatusCake"
draft: true 
type: Webhook

---

#### Register a StatusCake Contact Group
Log in to StatusCake.

Go to [Contact Groups > Create New Contact Group](https://www.statuscake.com/App/ContactGroup.php), and fill out the form as follows:

* **Group Name:** `BigPanda`
* **Ping URL:** `https://api.bigpanda.io/data/integrations/statuscake?access_token=$TOKEN`

Click on *Save Changes*.
<!-- section-separator -->
#### Assign BigPanda as a Contact for All StatusCake Tests
Navigate to [Your Tests](https://www.statuscake.com/App/YourStatus.php). For each test:

* Click on *Edit*
* Add `BigPanda` to the *Contact Group(s)* list
* Click on *Instant Submit*

<!-- section-separator -->
#### Provide Your StatusCake Account Information

<!-- app-only-start -->
In order to validate that StatusCake is the origin of each notification, we need you to input the username and the API key of StatusCake in the form below.  
You can find the username in the [Account](https://www.statuscake.com/App/User.php) page, and the API Key in the [Account > API Key](https://www.statuscake.com/App/APIKey.php) page.

<!-- include 'integrations/statuscake/statuscake' -->

When you're done, don't forget to click on *Activate Integration* above.

<!-- app-only-end -->

<!-- docs-only-start -->

Within the BigPanda application, you can validate your StatusCake integration using an interactive form.

<!-- docs-only-end -->
