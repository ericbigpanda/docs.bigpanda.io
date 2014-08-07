---
layout: integration 
title: "Bash"
draft: true
---

#### Install the BigPanda Shell utility
Run the following commands to install the utility to `/usr/local/bin`:

    $ sudo curl https://s3-us-west-1.amazonaws.com/bp-public/utilities/bigpanda-deployment -o /usr/local/bin/bigpanda-deployment

    $ sudo chmod a+x /usr/local/bin/bigpanda-deployment

For more details about the utility, run:

    bigpanda-deployment help

<!-- section-separator -->

#### Notify BigPanda when a deployment starts

**Note:** Deployments will be shown as in-progress until you send end of deployment notification.

Use the bigpanda utility in your scripts to send a notification at the start of a deployment:

    BP_API_TOKEN=$TOKEN bigpanda-deployment start $APP_NAME $VERSION $HOST

**Note:** Don't forget to replace `$APP_NAME`, `$VERSION` and `$HOST` with the right arguments.

<!-- section-separator -->

#### Notify BigPanda when a deployment ends
Use the bigpanda utility in your scripts to send a notification at the end of a deployment:

    BP_API_TOKEN=$TOKEN bigpanda-deployment success $APP_NAME $VERSION $HOST

or in case of failure:
    
    BP_API_TOKEN=$TOKEN bigpanda-deployment fail $APP_NAME $VERSION $HOST

**Note:** Don't forget to replace `$APP_NAME`, `$VERSION` and `$HOST` with the right arguments.
