#!/bin/bash

ADMIN_SERVICE_DIR="/opt/apollo/admin"
LOG_FILE="/opt/apollo/admin/log/configservice-running.log"

java -jar ${ADMIN_SERVICE_DIR}/apollo-configservice.jar > $LOG_FILE &