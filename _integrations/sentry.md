---
layout: integration 
title: "Sentry"
draft: false
type: System Monitoring
---

#### Create a BigPanda Application Key

Start by creating an app key for a Sentry account with the form below. Use a separate app key per each Sentry account you integrate. 

*Tip: if you have only one Sentry account, you might want to click on `Generate App Key` without giving a name.*

<!-- app-only-start -->
<!-- include 'integrations/multiple/multiple' -->
<!-- app-only-end -->
<!-- docs-only-start -->

In the BigPanda Application, there's a form that you can enter the Sentry account name.

<!-- docs-only-end -->

<!-- section-separator -->
#### Define the Sentry Webhook  

For each project in Sentry:

* Go to `Settings > Manage Integrations`.
* Enable the `WebHooks` plugin (it might be already enabled). You should see a new item under the INTEGRATIONS section.  
* Click on the new item called `WebHooks` and append the URL below to the `Callback URLs` text area:  
`https://api.bigpanda.io/data/integrations/sentry?$URL_PARAMS`

*Note: If you changed the default Rules in Sentry, please consult the relevant FAQ item called __What Rules do I need to configure?__.*

<!-- section-separator -->

#### Success
Next time you'll have Sentry alerts, you will able to see them in BigPanda.
