---
layout: integration 
title: "PRTG"
draft: false
type: System Monitoring

---

#### Login

Login to the PRTG Dashboard as an admin user.


<!-- section-separator -->

#### Create a PRTG Notification  

Go to *Setup > Account Settings > Notifications* and click on **Add new notification**.

In the Add Notification page:

* In **Notification Name** input: `BigPanda Notification`
* For **NOTIFICATION SUMMARIZATION > Method** choose: `Always notify ASAP`
* Mark **EXECUTE HTTP ACTION** as checked
* In **EXECUTE HTTP ACTION > URL** insert: `https://api.bigpanda.io/data/integrations/prtg?access_token=$TOKEN`
* In **EXECUTE HTTP ACTION > Postdata** insert: `sensor=%name&status=%status&datetime=%datetime&timezone=%timezone&message=%message&group=%group&device=%device&host=%host&home=%home&prio=%prio&since=%since`

The final outcome should look like this:  
![Create Policy window](/media/prtg1.jpg)


Click on save and continue with the tutorial.

<!-- section-separator -->

#### Create PRTG Triggers
Go to *Devices* and click on **Notifications** (for Group **Root**)

BigPanda will monitor the **Down**, **Warning**, **Unusual** and **Partial Down** states. The following instructions are for the **Down** state. Please repeat them for every state.

* Click on **Add State Trigger**.
* Update the fields to the corresponding values:
  * **When sensor is**: `Down`
  * In all of the **...perform**: `BigPanda Notification`
  * **...repeat every**: `300`
* Keep the other fields with the default values.
* Click on **Save**.

*Note: Don't forget to add state triggers also for **Warning**, **Unusual** and **Partial Down** (choose the desired state instead of **Down**).*

The final outcome should look like this:  
![Create Policy window](/media/prtg2.jpg)

<!-- section-separator -->

#### Success
Now click on **Done & Install** below to complete the installation.

Next time you'll have PRTG alerts, you will able to see them in BigPanda.
