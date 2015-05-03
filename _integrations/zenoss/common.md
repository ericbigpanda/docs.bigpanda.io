<!-- section-separator -->

#### Configure the BigPanda Agent
Generate the agent's configuration file with your organization token:

    $ sudo bigpanda-config --init --token $TOKEN

And add the Zenoss plugin with the application key you created in step 1:

    $ sudo bigpanda-config --add zenoss --app-key $STREAM_ID

When prompted, specify the url of the Zenoss web interface and a valid username and password.

*Note: You may want to create a dedicated user for BigPanda, the required role is `ZenUser`.*

<!-- section-separator -->

#### Set Zenoss timezone

<!-- docs-only-start -->

Zenoss uses the timezone that has been set on the system that Zenoss is installed on. In BigPanda, you will be able to set the timezone so BigPanda could parse the dates correctly.

<!-- docs-only-end -->

<!-- app-only-start -->

Zenoss uses the timezone that has been set on the system that Zenoss is installed on. Connect to the server Zenoss is installed on, check its timezone, and select it below.

<!-- include 'integrations/zenoss/zenoss' -->

<!-- app-only-end -->
