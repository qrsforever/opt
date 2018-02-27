# !/bin/bash

export MOSQUITTO_VERSION=1.4.14
export MOSQUITTO_HOME=`pwd`/mosquitto-${MOSQUITTO_VERSION}

# cd $MOSQUITTO_HOME
# make
# sudo make install

make_opt_link mosquitto $MOSQUITTO_HOME
