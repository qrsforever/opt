#!/bin/bash

export ECLIPSE_HOME=`pwd`/Oxygen
export PATH=$ECLIPSE_HOME:$PATH

make_opt_link eclipse $ECLIPSE_HOME
