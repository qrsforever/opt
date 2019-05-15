#!/bin/bash

make_opt_link vagrant `pwd`/vagrant-1.9.5

export VAGRANT_HOME=/opt/vagrant
export PATH=$VAGRANT_HOME/bin:$PATH

