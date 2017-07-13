#!/bin/bash

ZOOKEEPER_VERSION=3.4.10
ZOOKEEPER_HOME=`pwd`/zookeeper-${ZOOKEEPER_VERSION}
export PATH=$ZOOKEEPER_HOME/bin:$PATH

make_opt_link zookeeper $ZOOKEEPER_HOME
