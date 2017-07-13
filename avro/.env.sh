# !/bin/bash

export AVRO_VERSION=1.8.2
export AVRO_HOME=`pwd`/avro-${AVRO_VERSION}

make_opt_link avro $AVRO_HOME
