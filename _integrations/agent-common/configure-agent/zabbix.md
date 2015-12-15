#### Initialize the BigPanda agent
Execute the following command to initially configure the agent:

    $ sudo bigpanda-config --init --token $TOKEN

<!-- section-separator -->

#### Configure the Zabbix plugin
Execute the following command and follow the on-screen instructions to configure the BigPanda Zabbix plugin: 

    $ sudo bigpanda-config --add zabbix --app-key $STREAM_ID

You will be prompted for your admin password which will be used for this configuration only and will not be stored.

**Note:** If new host groups are added to Zabbix in the future, make sure to give the 'BigPanda Service' user group permissions to them. More information on Zabbix permissions can be found [here](http://www.zabbix.com/documentation/2.0/manual/config/users_and_usergroups/permissions)
