---
layout: integration 
title: "AppDynamics WebHooks"
draft: false
type: Application Monitoring
---

#### Create the BigPanda HTTP Request Template

__Note__: Complete this step only one time per AppDynamics controller.

1\. Log in to your AppDynamics controller.

2\. Click **Alert & Respond**.

3\. Click **HTTP Request Templates**.

4\. Click **New**.

5\. In the **Name** field, enter `BigPandaAlertTemplate`.

6\. In the **Request URL** section:

* For the method, select **POST**.
* In the **Raw URL** field, enter `https://api.bigpanda.io/data/integrations/appdynamics-webhook?app_key=$STREAM_ID`.
    
7\. In the **Custom Request Headers** section, add a header with the following values:
    `Authorization`     `Bearer $TOKEN`
    
8\. In the **Payload** section:

* In the **MIME Type** field, enter `application/json`.
* In the text area, copy the following template:


            {
              "account_name":                  "${account.name}",
              "account_id":                    "${account.id}",
              "action_name":                   "${action.name}",
              "action_id":                     "${action.id}",
              "action_trigger_time":           "${action.triggerTime}",
              "controller_link_url":           "${controllerUrl}",
              "clamped":                       ${clamped},
              "clamp_limit":                   ${clampLimit},
              "from_web_hook":                 true,
            #if (${notes})
              "notes":                         "${notes}",
            #end
              "policy_name":                   "${policy.name}",
              "policy_id":                     "${policy.id}",
              "policy_digest":                 ${policy.digest},
              "full_events_list":              [
            #foreach(${event} in ${fullEventList})#if (${event.healthRuleEvent})
              {
                "app_id":                      ${event.application.id},
                "app_name":                    "${event.application.name}",
                "bt_performance_event":        ${event.btPerformanceEvent},
                "deep_link_url":               "${event.deepLink}",
                "event_type":                  "$event.eventType",
                "event_message":               "${event.eventMessage.replaceAll("\\<[^>]*\\>","")}",
                "event_type_key":              "${event.eventTypeKey}",
                "event_time":                  "${event.eventTime}",
                "guid":                        "${event.guid}",
                "health_rule_event":           ${event.healthRuleEvent},
                "health_rule_violation_event": ${event.healthRuleViolationEvent},
                "health_rule_id":              ${event.healthRule.id},
                "health_rule_name":            "${event.healthRule.name}",
                "incident_id":                 "${event.incident.id}",
                "incident_name":               "${event.incident.name}",
            #if (${event.node_name})
                "node_name":                   "${event.node.name}",
                "node_id":                     "${event.node.id}",
            #end
                "summary_message":             "${event.summaryMessage.replaceAll("\\<[^>]*\\>","")}",
                "severity":                    "${event.severity}",
                "tag":                         "bigpanda-api",
            #if (${event.tier_name})
                "tier_name":                   "${event.tier.name}",
                "tier_id":                     "${event.tier.id}",
            #end
                "affected_entities":           [
            #foreach(${entity} in ${event.affectedEntities})
                    {
                      "id":                    ${entity.id},
                      "name":                  "${entity.name}",
                      "type":                  "${entity.entityType}"
                    }#if ($velocityHasNext), #end 
            
            #end
            
                ]
              }#if ($velocityHasNext), #end 
            
            #end 
            #end
              ]
            }


9\. In the **Settings** section, make sure that the **One Request Per Event** check box is not selected.

10\. Click **Save**.

<!-- section-separator -->

#### Create an AppDynamics Policy

1\. Go to **Application** > **Alert & Respond** > **Policies**, and click **Create Policy**.

2\. In the Create Policy window:

* In the name field, enter `BigPanda`.
* Select all of the **Health Rule Violation Events** check boxes.

<!-- section-separator -->

#### Create an AppDynamics Action

1\. In the Create Policy window, click **Actions** in the left pane, and then click ![+](/media/appdynamics-plus.png).

2\. If you already created a `BigPandaAlert` action for another application in AppDynamics, choose it and then click **Select**.

3\. If you have not created a `BigPandaAlert` action for another application in AppDynamics, create the action:

  1. Click **Create Action**.
  
  2. Select **Make an HTTP Request**.
  
  3. Click **OK**.
  
  4. In the **HTTP Request Template** field, select **BigPandaAlertTemplate**.
  
  5. Click **Save** to save the action.

4\. Click **Save** to create the new policy.

<!-- section-separator -->

#### Success

The next time AppDynamics generates a health rules alert, you will see it in the Incidents Dashboard.

__Note__: If you need support for alerts other than health rules, please contact support@bigpanda.io.
