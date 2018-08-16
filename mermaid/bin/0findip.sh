#!/bin/bash

if [[ $# != 3 ]]
then
    echo "$0 ipprefix start end"
    exit -1
fi

for i in `seq $2 $3`
do
    res=`ping -c 1 -W 1 $1.$i | grep "1 received"`
    if [[ $res != "" ]]
    then
        echo "$1.$i"
    fi
done
