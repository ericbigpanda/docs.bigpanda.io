#### Configure the BigPanda Agent

1. Configure the agent to work with Nagios Notifications integration by running the following commands:

        bigpanda-config --init --token $TOKEN
        bigpanda-config --add nagios-notifications --app-key $STREAM_ID

2. Add the Nagios user to the bigpanda group by running the following command:

        sudo usermod -a -G bigpanda <Nagios username>
