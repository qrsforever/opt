#!/bin/bash

DST_DIR=Ares
SRC_DIR=/data/source/$DST_DIR
TAG_DIR=/projects/tags/$DST_DIR
GRO_DIR=/projects/opengrok/$DST_DIR


if [ ! -d $SRC_DIR ]
then
    exit 0
fi

__git_up() {
    cd $1 
    result=`git pull | head -n1  | cut -d\  -f1`
    if [[ x$result == x"Already" || x$result == x"Everything" ]]
    then
        echo "0"
    else
        echo "1"
    fi
    cd - >/dev/null
}

if [[ x$(__git_up $SRC_DIR) == x"1" ]]
then
    if [ -f $TAG_DIR/db.sh ]
    then
        cd $TAG_DIR
        . db.sh
        cd - >/dev/null
    fi
    if [ -d $GRO_DIR ]
    then
        cd $GRO_DIR
        0opengrok
        cd - >/dev/null
    fi
fi

logdt=`data +"%Y/%m/%d %H:%M:%S"`
echo "Last $logdt" > /tmp/projects_crontab_update.txt
