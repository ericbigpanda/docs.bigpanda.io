---
layout: integration
title: "Sensu"
draft: false
type: System Monitoring

---

#### Create a Sensu Handler  

In order to send events to BigPanda we need to define a handler for Sensu ([more about handlers](http://sensuapp.org/docs/0.12/handlers)):

* Connect to the Sensu server via shell. 
* Please make sure you have all the following libraries installed: `ruby, ruby-dev, build-essential`.
* Please make sure you have sensu-plugin gen installed: `sudo gem install sensu-plugin`.
* Download the BigPanda handler and its configuration by executing the following:  
  * `sudo curl -o /etc/sensu/handlers/bigpanda.rb https://a.bigpanda.io/resources/integrations/sensu/bigpanda.rb`  
  * `sudo curl https://a.bigpanda.io/resources/integrations/sensu/handler_bigpanda.json | $SED | sudo tee /etc/sensu/conf.d/handler_bigpanda.json > /dev/null`
* Change the script's permissions to allow Sensu to execute it (you might need to replace `sensu` with the appropriate user):
  `sudo chown sensu:sensu /etc/sensu/handlers/bigpanda.rb && sudo chmod 700 /etc/sensu/handlers/bigpanda.rb`

<!-- section-separator -->

#### Add BigPanda as a Handler  

* Still on the Sensu server, go to the checks configuration directory (default: `/etc/sensu/conf.d`):
   * For each check, add `"bigpanda"` to the `handlers` array. The outcome should look similar to this:

            {
              "checks": {
                "<check_name>": {
                  "handlers": ["<handler_1_name>", "<handler_2_name>", ..., "bigpanda"],
                    ...

    	For example, the cron_check from [sensu documentation](http://sensuapp.org/docs/0.12/adding_a_check) should look like this:  

            {
              "checks": {
                "cron_check": {
                  "handlers": ["default", "bigpanda"],
                  "command": "/etc/sensu/plugins/check-procs.rb -p cron -C 1 ",
                  "interval": 60,
                  "subscribers": [ "webservers" ]
                }
              }
            }


* Restart the `sensu-server` service:  
  `sudo /etc/init.d/sensu-server restart`

<!-- section-separator -->

#### Success

Next time you'll have Sensu alerts, you will able to see them in BigPanda.
