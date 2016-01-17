#### Update Permissions
Give the agent read permissions to the objects.cache, status.dat and log files. A possible way to do it:

    $ sudo usermod -a -G "<GROUP OF OBJECT CACHE FILE>,<GROUP OF LOG FILE>,<GROUP OF STATUS DAT FILE>" bigpanda

