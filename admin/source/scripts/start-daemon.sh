#!/bin/bash
DIR="$( cd "$( dirname "$0"  )" && pwd  )"
HZJ_HOME="$( cd "$DIR/.." && pwd  )"
APOLLO_ADMIN_HOME="$( cd "$DIR/../.." && pwd  )"

bash -x $APOLLO_ADMIN_HOME/scripts/startup.sh
