#### Initialize the BigPanda agent
Execute the following command to initially configure the agent:

    $ sudo bigpanda-config --init --token $TOKEN

<!-- section-separator -->

#### Configure the Zabbix plugin
Execute the following command and follow the on-screen instructions to configure the BigPanda Zabbix plugin: 

    $ sudo bigpanda-config --add zabbix --app-key $STREAM_ID

**Note:** You will be prompted for your Zabbix admin user and password, which will be used for this configuration only and will not be stored, in order to create a new Zabbix user.
The new user accesses monitoring data to enable this BigPanda integration. You will be prompted to select the user's user type, which affects the user's access to data and the integration.
For more information, see the [BigPanda's documentation on Zabbix permissions](http://www.bigpanda.io/docs/display/DD/.Configuring+Zabbix+Permissions+vZabbix).

