#!/bin/bash

LOG_FILE="$APOLLO_LOG_DIR/config.out"
if ! [ -z ${RDS_TYPE} ]; then
    echo "spring.profiles.group.github = $RDS_TYPE" >${CONFIG_SERVICE_DIR}/application.properties    
fi
nohup java  \
    -Dapollo_profile=${APOLLO_PROFILE} \
    -Dspring.datasource.url=${DATASOURCE_URL} \
    -Dspring.datasource.username=${DATASOURCE_USERNAME} \
    -Dspring.datasource.password=${DATASOURCE_PASSWORD} \
    -Dspring.jpa.database-platform=${DATASOURCE_PLATEFORM} \
    -jar ${CONFIG_SERVICE_DIR}/apollo-configservice.jar 2>&1 >$LOG_FILE &
