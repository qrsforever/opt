# !/bin/bash

export JAVA_HOME=`pwd`/jdk1.8.0_73
export JRE_HOME=$JAVA_HOME/jre
export CLASSPATH=.:$JAVA_HOME/lib:$JRE_HOME/lib
export PATH=$JAVA_HOME/bin:$PATH

make_opt_link jdk $JAVA_HOME
