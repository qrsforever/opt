#!/bin/bash

export ANDROID_HOME=/data/opt/android
export JNI_HOME=$ANDROID_HOME/jni
export SDK_HOME=$ANDROID_HOME/sdk
export PATH=$SDK_HOME/platform-tools:$SDK_HOME/tools:$PATH

make_opt_link android $ANDROID_HOME
