#### Configure the BigPanda agent
Execute the following command to configure the agent:

    $ sudo bigpanda-config --init --token $TOKEN

<!-- section-separator -->

#### Configure Zabbix
Execute the following command and follow the on-screen instructions to configure the BigPanda Zabbix plugin: 

    $ sudo bigpanda-config --add zabbix --app-key $STREAM_ID

You will be prompted for your admin password which will be used for this configuration only and will not be stored:
