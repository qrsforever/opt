# !/bin/bash

export APOLLO_VERSION=1.7.1
export APOLLO_HOME=`pwd`/apache-apollo-${APOLLO_VERSION}

export PATH=$APOLLO_HOME/bin:$PATH

make_opt_link apollo $APOLLO_HOME
