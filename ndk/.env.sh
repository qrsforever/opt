# !/bin/bash

export NDK_HOME=`pwd`/ndk-r12b
export PATH=$NDK_HOME:$PATH

make_opt_link ndk $NDK_HOME
