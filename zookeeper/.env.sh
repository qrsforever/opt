#!/bin/bash

make_opt_link zookeeper `pwd`/zookeeper-3.4.10

ZOOKEEPER_HOME=/opt/zookeeper
export PATH=$ZOOKEEPER_HOME/bin:$PATH

