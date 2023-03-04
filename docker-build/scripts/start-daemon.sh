#!/bin/bash

DIR="$( cd "$( dirname "$0"  )" && pwd  )"
LOG_DIR="${APOLLO_HOME}/admin/log"
mkdir -p ${LOG_DIR}

bash -x $DIR/start-configservice.sh
sleep(10_000)
bash -x $DIR/start-adminservice.sh
sleep(10_000)
bash -x $DIR/start-portalservice.sh
