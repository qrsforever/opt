# !/bin/bash

export SPARK_HOME=`pwd`/spark-2.1.1-bin-hadoop2.7
export PATH=$SPARK_HOME/bin:$SPARK_HOME/sbin:$PATH

make_opt_link spark $SPARK_HOME
