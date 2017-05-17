#!/bin/bash

current_dir=/data/opt

make_opt_link()
{
    if [[ $# < 2 ]]
    then
        echo "Use: make_opt_link link_name link_path"
        return
    fi

    if [ ! -L /opt/$1 ]
    then
        ln -s $2 /opt/$1
    fi
}

for file in `ls $current_dir`
do
    if [ -d $current_dir/$file -a -e $current_dir/$file/.env.sh ] 
    then
        cd $current_dir/$file 2>/dev/null
        source .env.sh
        cd - 2>/dev/null
    fi
done

unset file
unset current_dir
