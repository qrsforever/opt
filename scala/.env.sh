# !/bin/bash

export SCALA_HOME=`pwd`/scala-2.12.2

export PATH=$SCALA_HOME/bin:$PATH

make_opt_link scala $SCALA_HOME
