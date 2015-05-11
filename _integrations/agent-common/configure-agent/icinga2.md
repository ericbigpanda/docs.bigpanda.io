#### Configure the BigPanda Agent
Generate the agent's configuration file:

    $ sudo bigpanda-config --init --token $TOKEN
    $ sudo bigpanda-config --add icinga2 --app-key $STREAM_ID

When prompted, specify the locations of `icinga.log`, `status.dat` and `objects.cache` files.

The script output should look like this:

    Log File Path: /var/log/icinga2/compat/icinga.log
    Status Dat Path: /var/cache/icinga2/status.dat
    Objects Cache Path: /var/cache/icinga2/objects.cache
	
Of course, the actual paths will depend on your installation.

