# !/bin/bash

export HBASE_VERSION=1.2.6
export HBASE_HOME=`pwd`/hbase-${HBASE_VERSION}

export PATH=$HBASE_HOME/bin:$PATH

make_opt_link hbase $HBASE_HOME
