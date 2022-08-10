#!/bin/bash
DIR="$( cd "$( dirname "$0"  )" && pwd  )"
HZJ_HOME="$( cd "$DIR/.." && pwd  )"
APOLLO_PORTAL_HOME="$( cd "$DIR/../.." && pwd  )"

bash -x $APOLLO_PORTAL_HOME/scripts/startup.sh
