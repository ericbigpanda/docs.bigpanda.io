---
layout: integration 
title: "Sentry"
draft: false
type: System Monitoring
---

#### Define the Sentry Webhook  

For each project in Sentry:

* Go to `Settings > Manage Integrations`.
* Enable the `WebHooks` plugin (it might be already enabled). You should see a new item under the INTEGRATIONS section.  
* Click on `Save Changes`.
* Choose the new item called `WebHooks` and append the URL below to the `Callback URLs` text area:  
`https://api.bigpanda.io/data/integrations/sentry?$URL_PARAMS`
* Click on `Save Changes`

*Note: If you changed the default Rules in Sentry, please consult the relevant FAQ item called __What Rules do I need to configure?__.*

<!-- section-separator -->

#### Success
Next time you'll have Sentry alerts, you will able to see them in BigPanda.
