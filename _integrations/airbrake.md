---
layout: integration 
title: "Airbrake"
draft: false
type: System Monitoring
---

#### Define the Airbrake Webhook  

For each project in Airbrake:

* Click on the small menu icon on the upper left corner, then navigate to `Project Settings`.
* Choose `Integrations` from the left menu.
* Choose `WebHooks` integration and in the `Url` input:  
  ```https://api.bigpanda.io/data/integrations/airbrake?$URL_PARAMS```
* Keep the `Active` checkbox checked.
* Click on `Save`.

After configuring the first project, test the integration by clicking on `Test Integration` link near the Webhook integration title.

*Tip: You can access the other projects in your Airbrake account through the left menu pane.*

<!-- section-separator -->

#### Success
You should see an Airbrake test incident in BigPanda, feel free to resolve the incident. 
