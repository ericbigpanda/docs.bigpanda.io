#### Test the Integration

1. Run the following command:

        /usr/bin/bigpanda-notification --send-test

    A test alert should arrive in a few moments.

2. In BigPanda, click the **Incidents** tab at the top of the screen.

3. Confirm that the test alert was received.

    Since it's a test alert, it won't be resolved automatically. Click **Resolve incident** to manually resolve it.

<!-- section-separator -->

#### Success

The next time Nagios sends a notification for an alert, you will see the alert in the Incident Dashboard.
