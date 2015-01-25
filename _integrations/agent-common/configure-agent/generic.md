#### Configure the BigPanda Agent
Generate and edit the agent's configuration file:

    $ sudo bigpanda-agent config --token $TOKEN
    $ sudo vim /etc/bigpanda/bigpanda.conf

Find the SOURCE_SYSTEM_LOWER/state plugin configuration section:

* Replace <APP_KEY> with $STREAM_ID
* Configure the locations of the SOURCE_SYSTEM_LOWER log, status.dat and objects.cache files
* Set enabled to 'true'

The plugin config should looks something like this:

	"SOURCE_SYSTEM_LOWER/state" : {
		"enabled" : true,
		"app_key" : "$STREAM_ID",
		"config" : {
			"SOURCE_SYSTEM_LOWER_log_file" : "/var/log/SOURCE_SYSTEM_FOLDER/LOGFILE.log",
			"objects_cache_filename" : "/var/cache/SOURCE_SYSTEM_FOLDER/objects.cache",
			"status_dat" : {
				"filename" : "/var/cache/SOURCE_SYSTEM_FOLDER/status.dat"
			}
		}
	}

* The log file is usually located at `/usr/local/SOURCE_SYSTEM_FOLDER/var/LOGFILE.log` or `/var/log/SOURCE_SYSTEM_FOLDER/LOGFILE.log`
* The cache file is usually located at `/usr/local/SOURCE_SYSTEM_FOLDER/var/objects.cache` or `/var/cache/SOURCE_SYSTEM_FOLDER/objects.cache`
* The status.dat file is usually located at `/usr/local/SOURCE_SYSTEM_FOLDER/var/status.dat` or `/var/cache/SOURCE_SYSTEM_FOLDER/status.dat`
