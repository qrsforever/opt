#!/bin/bash

make_opt_link maven `pwd`/apache-maven-3.5.0

MAVEN_HOME=/opt/maven
export PATH=$MAVEN_HOME/bin:$PATH
