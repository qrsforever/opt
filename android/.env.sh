#!/bin/bash

export ANDROID_HOME=/data/opt/android/sdk
export JNI_HOME=$ANDROID_HOME/../jni
export SDK_HOME=$ANDROID_HOME
export PATH=$SDK_HOME/emulator:$SDK_HOME/platform-tools:$SDK_HOME/tools/bin:$PATH

make_opt_link android $ANDROID_HOME
