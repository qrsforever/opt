# !/bin/bash

make_opt_link hive `pwd`/apache-hive-2.1.1-bin

export HIVE_HOME=/opt/hive
export PATH=$HIVE_HOME/bin:$PATH
