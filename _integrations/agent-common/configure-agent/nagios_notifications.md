#### Configure Nagios

Configure Nagios to send notifications to BigPanda.

1. Edit the main configuration file (`nagios.cfg`). The default location is: `/usr/local/nagios/etc/nagios.cfg`.

    * Add the following line: `cfg_file=/etc/bigpanda/bigpanda-contact.cfg`

    * Ensure that notifications are enabled. `enable_notifications=1`

2. In the file where your host objects are defined (for example, `templates.cfg`):

    * Add the `bigpanda` contact to the `contact_groups`.

    * Set the `notification_options` for the host to: `d,r,u,f,s`.

    For example:

        define host{
                name                            generic-host
                contact_groups                  admins,bigpanda
                notification_period             24x7
                notification_options            d,r,u,f,s
        }

    If the `contact_groups` option is not already listed in your definitions, you can add it.

3. In the file where your service objects are defined (for example, `templates.cfg`):

    * Add the `bigpanda` contact to the `contact_groups`.

    * Set the `notification_options` for the service to: `c,r,w,u,f,s`.

    For example:

        define service{
                name                            generic-service
                check_period                    24x7
                contact_groups                  admins,bigpanda
                notification_interval           60
                notification_period             24x7
                notification_options            c,r,w,u,f,s
        }

    If you have already configured notification options on a more specific template or definition, those settings will take precedence over the generic settings.

    To get the most out of this integration, ensure all of the desired notifications are sent to BigPanda.