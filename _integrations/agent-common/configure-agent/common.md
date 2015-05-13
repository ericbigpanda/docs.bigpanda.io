Generate the agent's configuration file with your organization token:

    $ sudo bigpanda-config --init --token $TOKEN

<!-- docs-only-start -->
And add the SOURCE_SYSTEM_NAME plugin with the application key generated for this integration:
<!-- docs-only-end -->
<!-- app-only-start -->
And add the SOURCE_SYSTEM_NAME plugin with the application key you created in step 1:
<!-- app-only-end -->

    $ sudo bigpanda-config --add SOURCE_SYSTEM_LOWER --app-key $STREAM_ID
