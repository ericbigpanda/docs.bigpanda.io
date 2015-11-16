---
layout: integration 
title: "AppDynamics WebHooks"
draft: false
type: Application Monitoring
---

#### Create the BigPanda HTTP Request Template

**NOTE** This step is only required once per AppDynamics Controller

* Login to your AppDynamics controller
* Click on `Alert and Respond`
* Click on `HTTP Request Templates`
* Click on `New`
* In the `Name` field, enter `BigPandaAlertTemplate` 
* In the `Request URL` section:
    * Choose `POST` as method
    * In the `Raw URL` field, Enter `https://api.bigpanda.io/data/integrations/appdynamics-webhook?app_key=$STREAM_ID`
* In the `Custom Request Headers` section add a header with the following values:
    `Authorization`     `Bearer $TOKEN`
* In the `Payload` section:
    * In the `MIME Type` field, Enter `application/json`
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
                "event_message":               "${event.eventMessage}",
                "event_type_key":              "${event.eventTypeKey}",
                "event_time":                  "${event.eventTime}",
                "guid":                        "${event.guid}",
                "health_rule_event":           ${event.healthRuleEvent},
                "health_rule_violation_event": ${event.healthRuleViolationEvent},
                "health_rule_id":              ${event.healthRule.id},
                "health_rule_name":            "${event.healthRule.name}",
                "incident_id":                 "${event.incident.id}",
                "incident_name":               "${event.incident.name}",
                "node_name":                   "${event.node.name}",
                "node_id":                     "${event.node.id}",
                "summary_message":             "${event.summaryMessage}",
                "severity":                    "${event.severity}",
                "tag":                         "bigpanda-api",
                "tier_name":                   "${event.tier.name}",
                "tier_id":                     "${event.tier.id}",
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

* In the `Settings` section, make sure that the `One request per event` is not checked

* Click `Save`

<!-- section-separator -->

#### Create an AppDynamics Policy

Go to `Application > Alert & Respond > Policies` and click on `Create Policy`.

In the Create Policy window:

* Input `BigPanda` in the name field
* Check all of the `Health Rule Violation Events` checkboxes

<!-- section-separator -->

#### Create an AppDynamics Action

Without leaving the Create Policy window.
Click on `Actions` on the left pane, and then click on ![+](/media/appdynamics-plus.png).

If you already created a `BigPandaAlert` action for another application in AppDynamics, choose it and then click `Select`.

Otherwise:

* Click on `Create Action`
* Select the `Make an HTTP Request` option
* Click on `OK`
* Choose `BigPandaAlertTemplate` in the `HTTP Request Template` field
* Click on `Save` to save the action

After creating the new custom action, click on `Save` to create the new policy.

<!-- section-separator -->

#### Success

Next time you'll have AppDynamics alerts, you will able to see them in the Incidents tab.

__Note__: If you need support in alerts other than health rules, please contact support@bigpanda.io.
