# !/bin/bash

export HADOOP_HOME=`pwd`/hadoop-2.8.0
export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop

export PATH=$HADOOP_HOME/bin:$HADOOP_HOME/sbin:$PATH

make_opt_link hadoop $HADOOP_HOME
