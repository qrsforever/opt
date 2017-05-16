# !/bin/bash

export HADOOP_HOME=`pwd`/hadoop-2.8.0
export PATH=$HADOOP_HOME/bin:$HADOOP_HOME/sbin:$PATH

make_opt_link hadoop $HADOOP_HOME
