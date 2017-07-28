#!/bin/bash

export TOMCAT_VERSION=8.5.14
export TOMCAT_HOME=`pwd`/apache-tomcat-${TOMCAT_VERSION}
export CATALINA_HOME=$TOMCAT_HOME
export PATH=$TOMCAT_HOME/bin:$PATH

make_opt_link tomcat $TOMCAT_HOME
