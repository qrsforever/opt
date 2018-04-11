# !/bin/bash

export STUDIO_HOME=`pwd`/android-studio-ide-171.4443003-linux
export PATH=$STUDIO_HOME/bin:$PATH

make_opt_link studio $STUDIO_HOME
