#!/bin/bash

MAVEN_HOME=`pwd`/apache-maven-3.5.0
export PATH=$MAVEN_HOME/bin:$PATH

make_opt_link maven $MAVEN_HOME
