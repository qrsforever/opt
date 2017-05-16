#!/bin/bash

export VAGRANT_HOME=`pwd`/vagrant-1.9.5
export PATH=$VAGRANT_HOME/bin:$PATH

make_opt_link vagrant $VAGRANT_HOME
