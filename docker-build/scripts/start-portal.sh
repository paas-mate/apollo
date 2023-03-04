#!/bin/bash

LOG_FILE="$APOLLO_HOME/logs/portal.out"
nohup java  \
    -Dapollo_profile=${APOLLO_PROFILE} \
    -Dspring.datasource.url=${DATASOURCE_URL} \
    -Dspring.datasource.username=${DATASOURCE_USERNAME} \
    -Dspring.datasource.password=${DATASOURCE_PASSWORD} \
    -Dspring.jpa.database-platform=${DATASOURCE_PLATEFORM} \
    -jar ${PORTAL_SERVICE_DIR}/apollo-portalservice.jar 2>&1 >$LOG_FILE &
