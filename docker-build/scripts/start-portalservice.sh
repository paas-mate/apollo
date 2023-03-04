#!/bin/bash

ADMIN_SERVICE_DIR="${APOLLO_PROFILE}/admin"
LOG_FILE="${ADMIN_SERVICE_DIR}/log/portal-running.log"

nohup java  \
    -Dapollo_profile=${APOLLO_PROFILE} \
    -Dspring.datasource.url=${DATASOURCE_URL} \
    -Dspring.datasource.username=${DATASOURCE_USERNAME} \
    -Dspring.datasource.password=${DATASOURCE_PASSWORD} \
    -Dspring.jpa.database-platform=${DATASOURCE_PLATEFORM} \
    -jar ${ADMIN_SERVICE_DIR}/apollo-protal.jar 2>&1 >$LOG_FILE &
