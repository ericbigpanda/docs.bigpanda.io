#### Initialize the BigPanda agent
Execute the following command to configure the agent:

    $ sudo bigpanda-config --init --token $TOKEN

<!-- section-separator -->

#### Configure the Zabbix plugin
Execute the following command and follow the on-screen instructions to configure the BigPanda Zabbix plugin: 

    $ sudo bigpanda-config --add zabbix --app-key $STREAM_ID

**Note:**

* You must enter the user name and password of a Zabbix Super Admin user. These credentials are not stored. They are used only to create a new Zabbix user for BigPanda, which enables the integration.

* You must select the user type for the new user. The user type affects how BigPanda is granted access to your monitoring data.
For more information, see the [BigPanda documentation on Zabbix permissions](http://www.bigpanda.io/docs/display/BD/Configuring+Zabbix+Permissions).

