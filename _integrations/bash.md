---
layout: integration 
title: "Bash"
draft: false
type: API
---

#### Install the BigPanda Shell Utility
Run the following commands to install the utility to `/usr/local/bin`:

    $ sudo curl https://s3-us-west-1.amazonaws.com/bp-public/utilities/bigpanda-deployment -o /usr/local/bin/bigpanda-deployment
    $ sudo chmod a+x /usr/local/bin/bigpanda-deployment

For more information about the utility, run:

    bigpanda-deployment help

<!-- section-separator -->

#### Notify BigPanda When a Deployment Starts

**Note:** Deployments appear as in-progress until you send a matching end notification.

Use the bigpanda utility in your scripts to send a notification at the start of a deployment.

    BP_API_TOKEN=$TOKEN bigpanda-deployment start $APP_NAME $VERSION $HOST

**Note:** You must replace `$APP_NAME`, `$VERSION` and `$HOST` with the correct values for your deployment.

<!-- section-separator -->

#### Notify BigPanda When a Deployment Ends
Use the bigpanda utility in your scripts to send a notification at the end of a deployment.

    BP_API_TOKEN=$TOKEN bigpanda-deployment success $APP_NAME $VERSION $HOST

Or, in case of failure:
    
    BP_API_TOKEN=$TOKEN bigpanda-deployment fail $APP_NAME $VERSION $HOST

**Note:** You must replace `$APP_NAME`, `$VERSION` and `$HOST` with the correct values for your deployment.
