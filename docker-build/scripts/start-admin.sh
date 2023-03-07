#!/bin/bash

LOG_FILE="$APOLLO_LOG_DIR/adminservice.out"
if ! [ -z ${RDS_TYPE} ]; then
    OPTS="$OPTS -Dspring.profiles.group.github=${RDS_TYPE}"
fi
OPTS="$OPTS -Dapollo_profile=${APOLLO_PROFILE}"
OPTS="$OPTS -Dspring.datasource.url=${DATASOURCE_URL}"
OPTS="$OPTS -Dspring.datasource.username=${DATASOURCE_USERNAME}"
OPTS="$OPTS -Dspring.datasource.password=${DATASOURCE_PASSWORD}"
if ! [ -z ${DATASOURCE_PLATFORM} ]; then
    OPTS="$OPTS -Dspring.jpa.database-platform=${DATASOURCE_PLATFORM}"
fi
nohup java $OPTS -jar ${ADMIN_SERVICE_DIR}/apollo-adminservice.jar 2>&1 >$LOG_FILE &
