#### Configure the BigPanda Agent
Generate and edit the agent's configuration file:

    $ sudo bigpanda-agent config --token $TOKEN
    $ sudo vim /etc/bigpanda/bigpanda.conf

Find the __SOURCE_SYSTEM_LOWER/state__ plugin configuration section:

* Replace `<APP_KEY>` with `$STREAM_ID`
* Configure the locations of `LOGFILE.log`, `status.dat` and `objects.cache` files
* Set `enabled` to `true`

The plugin config should look like this:

	"SOURCE_SYSTEM_LOWER/state" : {
		"enabled" : true,
		"app_key" : "$STREAM_ID",
		"endpoint": "/data/events/alerts",
		"action": "POST",
		"config" : {
			"SOURCE_SYSTEM_LOWER_log_file" : "/var/log/SOURCE_SYSTEM_FOLDER/LOGFILE.log",
			"objects_cache_filename" : "/var/cache/SOURCE_SYSTEM_FOLDER/objects.cache",
			"status_dat" : {
				"filename" : "/var/cache/SOURCE_SYSTEM_FOLDER/status.dat"
			}
		}
	},

Find the __SOURCE_SYSTEM_LOWER/objects__ plugin configuration section:

* Replace `<APP_KEY>` with `$STREAM_ID`
* Configure the location of the `objects.cache` file
* Set `enabled` to `true`

The plugin config should look like this:

	"SOURCE_SYSTEM_LOWER/objects" : {
		"enabled" : true,
		"endpoint": "/metadata/dump/$STREAM_ID/",
		"timeout": 1000,
		"action": "POST",
		"config" : {
			"objects_cache_filename" : "/var/cache/SOURCE_SYSTEM_FOLDER/objects.cache"
		}
	},


of course, the actual paths will depend on your installation.

