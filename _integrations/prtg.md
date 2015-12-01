---
layout: integration 
title: "PRTG"
draft: false
type: System Monitoring

---

#### Create a PRTG Notification
**Note:** This integration supports only the English language version of PRTG.

1. Log in to the PRTG Dashboard as an admin user.

2. Go to **Setup > Account Settings > Notifications** and click **Add new notification**.

3. In the Add Notification page:

  * In **Notification Name**, enter `BigPanda Notification`.
  * For **NOTIFICATION SUMMARIZATION > Method**, select **Always notify ASAP**.
  * Select the **EXECUTE HTTP ACTION** check box.
  * In **EXECUTE HTTP ACTION > URL**, enter `https://api.bigpanda.io/data/integrations/prtg?$URL_PARAMS`.
  * In **EXECUTE HTTP ACTION > Postdata**, enter `sensor=%name&status=%status&datetime=%datetime&timezone=%timezone&message=%message&group=%group&device=%device&host=%host&home=%home&prio=%prio&since=%since&linksensor=%linksensor`.

  Your Add Notification page should look like this example.  
![Create Policy window](/media/prtg1.jpg)

4. Click **Save**.

<!-- section-separator -->

#### Create PRTG Triggers
**Note:** BigPanda monitors the **Down**, **Warning**, **Unusual**, and **Partial Down** states. You must add a trigger for each of these states.

1. Click **Devices**.

2. In the Devices page, click the **Notifications** button for the Group **Root**.

3. Click **Add State Trigger**.

4. Fill in the fields:

  * **When sensor is**: `Down`
  * In all of the **...perform**: `BigPanda Notification`
  * **...repeat every**: `300`
  * Keep the default values for all other fields.
5. Click **Save**.

6. Repeat steps 3 - 5 to add state triggers for each of these states: **Warning**, **Unusual**, and **Partial Down**.

  The complete list of BigPanda triggers in PRTG should look like this example.  
![Create Policy window](/media/prtg2.jpg)

<!-- section-separator -->

#### Success
The next time PRTG generates an alert, you will see it in the Incidents Dashboard.
