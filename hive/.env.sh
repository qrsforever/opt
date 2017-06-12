# !/bin/bash

export HIVE_HOME=`pwd`/apache-hive-2.1.1-bin
export PATH=$HIVE_HOME/bin:$PATH

make_opt_link hive $HIVE_HOME
