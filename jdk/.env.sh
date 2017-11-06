# !/bin/bash

export JAVA_VERSION=1.8.0_141
export JAVA_HOME=`pwd`/jdk${JAVA_VERSION}
export JRE_HOME=$JAVA_HOME/jre
export CLASSPATH=.:$JAVA_HOME/lib:$JRE_HOME/lib
export PATH=$JAVA_HOME/bin:$PATH

make_opt_link jdk $JAVA_HOME
