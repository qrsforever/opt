# !/bin/bash

export HBASE_HOME=`pwd`/hbase-1.3.1
export PATH=$HBASE_HOME/bin:$PATH

make_opt_link hbase $HBASE_HOME
