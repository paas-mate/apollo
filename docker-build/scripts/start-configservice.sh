#!/bin/bash

ADMIN_SERVICE_DIR="${APOLLO_HOME}/admin"
LOG_FILE="${ADMIN_SERVICE_DIR}/log/configservice-running.log"

nohup java -jar ${DIR}/apollo-configservice.jar 2>&1 >$LOG_FILE &
