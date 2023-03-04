#!/bin/bash

ADMIN_SERVICE_DIR="/opt/apollo/admin"
LOG_FILE="/opt/apollo/admin/log/portal-running.log"
java  \
    -Dapollo_profile=${APOLLO_PROFILE} \
    -Dspring.datasource.url=${DATASOURCE_URL} \
    -Dspring.datasource.username=${DATASOURCE_USERNAME} \
    -Dspring.datasource.password=${DATASOURCE_PASSWORD} \
    -Dspring.jpa.database-platform=${DATASOURCE_PLATEFORM} \
    -jar ${ADMIN_SERVICE_DIR}/apollo-protal.jar > $LOG_FILE &