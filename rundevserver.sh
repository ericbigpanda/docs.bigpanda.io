#!/bin/bash
node dev &
echo $! > /tmp/doc-dev.pid
jekyll build --watch --config ./_config_prod.yml &
echo $! > /tmp/doc-jekyll.pid
exit_function () {
    echo "Killing node and jekyll"
    cat /tmp/doc-dev.pid | xargs kill -9
    cat /tmp/doc-jekyll.pid | xargs kill -9
    exit 0
}

trap exit_function SIGINT
while true; do read x; done
