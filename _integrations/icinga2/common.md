#### Configure Icinga2

The BigPanda agent uses Icinga2 status.dat and compatibility log to generate alerts. Both files require enabling features that by default are disabled. To enable those feature, run the following commands on your Icinga2 server:

    $ sudo icinga2 feature enable compatlog statusdata
    $ sudo service icinga2 restart
