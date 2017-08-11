#!/bin/bash

# export CATALINA_HOME=$TOMCAT_HOME
export OPENGROK_TOMCAT_BASE=/opt/tomcat
export OPENGROK_VERSION=1.1-rc10
export OPENGROK_HOME=`pwd`/opengrok-${OPENGROK_VERSION}
export OPENGROK_INSTANCE_BASE=$OPENGROK_HOME
export PATH=$OPENGROK_HOME/bin:$PATH

# mkdir -p $OPENGROK_INSTANCE_BASE/src
# mkdir -p $OPENGROK_INSTANCE_BASE/data
# mkdir -p $OPENGROK_INSTANCE_BASE/etc
# ./OpenGrok deploy
# ./OpenGrok index

# 也可以 每个项目可以指定一个配置
# export OPENGROK_CONFIGURATION=xxx/src/softlink/opengrok.conf
# cat opengrok.conf
#   OPENGROK_APP_SERVER=Tomcat
#   OPENGROK_TOMCAT_BASE=/usr/local/Cellar/tomcat/8.0.21/libexec
#   OPENGROK_SCAN_DEPTH=4
#   OPENGROK_VERBOSE=yes
#   OPENGROK_PROGRESS=yes
#   IGNORE_PATTERNS="-i f:foo.txt -i *.bar d:target -i d:.tox"

make_opt_link opengrok $OPENGROK_HOME
