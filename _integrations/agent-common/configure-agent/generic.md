#### Configure the BigPanda Agent
Generate and edit the agent's configuration file:

    $ sudo bigpanda-agent config --token $TOKEN
    $ sudo vim /etc/bigpanda/bigpanda.conf

Activate the SOURCE_SYSTEM_NAME plugin:

	"plugins" : {
		"SOURCE_SYSTEM_LOWER/state" : {
			"enabled" : true,
                    "app_key" : "$STREAM_ID",
			...
		}
	}

Configure the locations of the SOURCE_SYSTEM_LOWER log, status.dat and objects.cache files:

	"SOURCE_SYSTEM_LOWER/state" : {
		...
		"config" : {
			"SOURCE_SYSTEM_LOWER_log_file" : "<LOCATION OF SOURCE_SYSTEM_UPPER LOG>",
			"objects_cache_filename" : "<LOCATION OF SOURCE_SYSTEM_UPPER OBJECT CACHE>",
                    "status_dat" : {
                        "filename" : "<LOCATION OF SOURCE_SYSTEM_UPPER STATUS DAT>"
                    },
		}
	}

