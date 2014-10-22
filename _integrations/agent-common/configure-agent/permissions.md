Give the agent read permissions to the object cache and log files. A possible way to do it:

    $ usermod bigpanda -a -G "<GROUP OF OBJECT CACHE FILE>,<GROUP OF LOG FILE>"

