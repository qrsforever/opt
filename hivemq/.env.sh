# !/bin/bash

export HIVEMQ_VERSION=4.1.0
export HIVEMQ_HOME=`pwd`/hivemq-${HIVEMQ_VERSION}
export PATH=$HIVEMQ_HOME/bin:$PATH

alias xstart_hivemq='$HIVEMQ_HOME/bin/run.sh'

make_opt_link hivemq $HIVEMQ_HOME
