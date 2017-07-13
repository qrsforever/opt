# !/bin/bash

export HADOOP_VERSION=2.8.0
export HADOOP_HOME=`pwd`/hadoop-${HADOOP_VERSION}
export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop

export PATH=$HADOOP_HOME/bin:$HADOOP_HOME/sbin:$PATH

alias hls='hdfs dfs -ls'
alias hcat='hdfs dfs -cat'
alias hrm='hdfs dfs -rm -r -skipTrash'

make_opt_link hadoop $HADOOP_HOME
