#!/bin/bash

DIR="$( cd "$( dirname "$0"  )" && pwd  )"

mkdir -p $APOLLO_HOME/logs

bash -x $DIR/start-config.sh
sleep 10
bash -x $DIR/start-admin.sh
sleep 10
bash -x $DIR/start-portal.sh

tail -f /dev/null
