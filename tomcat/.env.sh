#!/bin/bash

export TOMCAT_HOME=`pwd`/apache-tomcat-8.5.14
export PATH=$TOMCAT_HOME/bin:$PATH

make_opt_link tomcat $TOMCAT_HOME
