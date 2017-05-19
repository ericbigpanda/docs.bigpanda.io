#### Configure the BigPanda Agent

1. Configure the agent to work with Nagios Notifications integration by running the following commands:

        bigpanda-config --init --token $TOKEN
        bigpanda-config --add nagios-notification --app-key $STREAM_ID

2. Add the BigPanda user to the Nagios group by running the following command:

        sudo usermod -a -G <Nagios group> bigpanda
