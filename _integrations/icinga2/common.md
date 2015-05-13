#### Configure Icinga2

The BigPanda agent uses Icinga2 status.dat and compatibility log to generate alerts. Both files will be created by Icinga2 only after enabling the _compatlog_ and _statusdata_ features. To enable those feature, run the following commands on your Icinga2 server:

    $ sudo icinga2 feature enable compatlog statusdata
    $ sudo service icinga2 restart
