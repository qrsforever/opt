#!/bin/bash

make_opt_link opengrok `pwd`/opengrok-1.1-rc11

export OPENGROK_TOMCAT_BASE=/opt/tomcat
export OPENGROK_HOME=/opt/opengrok
export OPENGROK_INSTANCE_BASE=$OPENGROK_HOME
export PATH=$OPENGROK_HOME/bin:$PATH
