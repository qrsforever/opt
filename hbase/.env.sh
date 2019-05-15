# !/bin/bash

make_opt_link hbase `pwd`/hbase-1.2.6

export HBASE_HOME=/opt/hbase
export PATH=$HBASE_HOME/bin:$PATH

