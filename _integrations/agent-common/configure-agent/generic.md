#### Configure the BigPanda Agent
Generate the agent's configuration file:

    $ sudo bigpanda-agent config --token $TOKEN
    $ sudo bigpanda-agent config --add SOURCE_SYSTEM_LOWER --app-key $STREAM_ID

When prompted, specify the locations of `LOGFILE.log`, `status.dat` and `objects.cache` files.

The script output should look like this:

    Log File Path: /var/log/nagios3/nagios.log
    Status Dat Path: /var/cache/nagios3/status.dat
    Objects Cache Path: /var/cache/nagios3/objects.cache
	
Of course, the actual paths will depend on your installation.

