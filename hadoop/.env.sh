# !/bin/bash

make_opt_link hadoop `pwd`/hadoop-2.7.3

alias hls='hdfs dfs -ls'
alias hcat='hdfs dfs -cat'
alias hrm='hdfs dfs -rm -r -skipTrash'

export HADOOP_HOME=/opt/hadoop
export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop

export PATH=$HADOOP_HOME/bin:$HADOOP_HOME/sbin:$PATH

