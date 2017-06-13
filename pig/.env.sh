# !/bin/bash

export PIG_HOME=`pwd`/pig-0.16.0
export PATH=$PIG_HOME/bin:$PATH

make_opt_link pig $PIG_HOME
