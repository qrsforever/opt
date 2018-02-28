#!/bin/bash

############## DEMO TEMPLATE ################

ARES_SRC_DIR=/data/source/Ares
ARES_TAG_DIR=/projects/tags/Ares

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

if [[ x$(__git_up $ARES_SRC_DIR) == x"1" ]]
then
    cd $ARES_TAG_DIR
    if [ -f $ARES_TAG_DIR/db.sh ]
    then
        . $ARES_TAG_DIR/db.sh
    fi
    cd - >/dev/null
fi
