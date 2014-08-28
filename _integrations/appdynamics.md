---
layout: integration 
title: "AppDynamics"
draft: false
type: Application Monitoring
---

#### Login

Login to the AppDynamics Controller.

For every application you have configured in AppDynamics, please follow steps 2-3. 

<!-- section-separator -->

#### Create an AppDynamics Policy    

Go to `Application > Alert & Respond > Policies` and click on `Create Policy`.

In the Create Policy window:

* Input `BigPanda` in the name field
* Check all of the `Health Rule Violation Events` checkboxes

The final outcome should look like this:  
![Create Policy window](/media/appdynamics1.png)

<!-- section-separator -->

#### Create an AppDynamics Action
Without leaving the Create Policy window.  
Click on `Actions` on the left pane, and then click on ![+](/media/appdynamics-plus.png).  
{: .not-responsive}

If you already created a BigPanda action for another application in AppDynamics, choose it and then click `Select`.

Otherwise:

* Click on `Create Action`
* Make sure `Send an email` is selected
* Click on `OK`
* Copy `$EMAIL` to the email field 
* Click on `Save`

After selecting or creating a contact, click on `Save` in the next `Configure Action` window and then in the `Create Policy` window.

<!-- section-separator -->

#### Success
*Don't forget to follow steps 2-3 for every application in AppDynamics*

Next time you'll have AppDynamics alerts, you will able to see them in OpsBox.

Now click on `Done & Install` below to finish.

