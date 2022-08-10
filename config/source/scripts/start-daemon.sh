#!/bin/bash
DIR="$( cd "$( dirname "$0"  )" && pwd  )"
HZJ_HOME="$( cd "$DIR/.." && pwd  )"
APOLLO_CONFIG_HOME="$( cd "$DIR/../.." && pwd  )"

bash -x $APOLLO_CONFIG_HOME/scripts/startup.sh
