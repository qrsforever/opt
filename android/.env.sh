#!/bin/bash

make_opt_link sdk `pwd`/sdk

export ANDROID_HOME=/opt/sdk
export JNI_HOME=$ANDROID_HOME/../jni
export SDK_HOME=$ANDROID_HOME
export PATH=$SDK_HOME/emulator:$SDK_HOME/platform-tools:$SDK_HOME/tools/bin:$PATH

