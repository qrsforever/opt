# !/bin/bash

export GRADLE_VERSION=4.6
export GRADLE_HOME=`pwd`/gradle-${GRADLE_VERSION}

export PATH=$GRADLE_HOME/bin::$PATH

make_opt_link gradle $GRADLE_HOME
