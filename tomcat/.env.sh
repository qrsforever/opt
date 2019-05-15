#!/bin/bash

make_opt_link tomcat `pwd`/apache-tomcat-8.5.14

export TOMCAT_HOME=/opt/tomcat
export CATALINA_HOME=$TOMCAT_HOME
export PATH=$TOMCAT_HOME/bin:$PATH
