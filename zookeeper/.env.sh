#!/bin/bash

ZOOKEEPER_HOME=`pwd`/zookeeper-3.4.10
export PATH=$ZOOKEEPER_HOME/bin:$PATH

make_opt_link zookeeper $ZOOKEEPER_HOME
