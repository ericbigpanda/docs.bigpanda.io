#### Configure the BigPanda Agent
Generate the agent's configuration file:

    $ sudo bigpanda-config --init --token $TOKEN
    $ sudo bigpanda-config --add SOURCE_SYSTEM_LOWER --app-key $STREAM_ID

When prompted, specify the locations of `LOGFILE.log`, `status.dat` and `objects.cache` files.

The script output should look like this:

    Log File Path: /var/log/SOURCE_SYSTEM_FOLDER/LOGFILE.log
    Status Dat Path: /var/cache/SOURCE_SYSTEM_FOLDER/status.dat
    Objects Cache Path: /var/cache/SOURCE_SYSTEM_FOLDER/objects.cache
	
Of course, the actual paths will depend on your installation.

