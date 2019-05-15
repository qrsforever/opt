# !/bin/bash

make_opt_link gradle `pwd`/gradle-4.6

export GRADLE_HOME=/opt/gradle
export PATH=$GRADLE_HOME/bin::$PATH
