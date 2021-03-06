#!/bin/bash

if (( $# < 1 ))
then
   echo "Use: $0 a.apk/a.jar/a.class"
   exit
fi

current_dir=`pwd`
cmd_dir=`which $0`
cmd_dir=`dirname $cmd_dir`

output_dir=/tmp/output

if [ -d $output_dir ];
then
    rm -rf $output_dir
fi

mkdir -p $output_dir

LIBS_HOME="$cmd_dir/../lib/android"
APKTOOL="$LIBS_HOME/apktool/apktool"
DEX2JAR="$LIBS_HOME/dex2jar/d2j-dex2jar.sh"

file=$1

if [ ${file##*.} == "apk" ]
then
    $APKTOOL d -f $1 -o $output_dir/apk-decode
    unzip -x $1 -d $output_dir/apk-unzip
    $DEX2JAR -f $output_dir/apk-unzip/classes.dex -o $output_dir/dex2jar/classes.jar 
    file=$output_dir/dex2jar/classes.jar
fi

if [ ${file##*.} == "dex" ]
then
    $DEX2JAR -f $1 -o $output_dir/dex2jar/classes.jar 
    file=$output_dir/dex2jar/classes.jar
fi

if [ ${file##*.} == "jar" -o ${file##*.} == "class" ]
then
    ln -s $LIBS_HOME/jd-gui/jd-gui-1.4.0.jar $output_dir/jd-gui.jar
    java -jar $output_dir/jd-gui.jar $file
fi

echo "output: ${output_dir}"
