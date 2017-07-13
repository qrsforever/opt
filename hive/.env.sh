# !/bin/bash

export HIVE_VERSION=2.1.1
export HIVE_HOME=`pwd`/apache-hive-${HIVE_VERSION}-bin
export PATH=$HIVE_HOME/bin:$PATH

make_opt_link hive $HIVE_HOME
