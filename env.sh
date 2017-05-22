#!/bin/bash

current_dir=/data/opt

export workspace=/workspace
export data=/data
export project=/project 
export tags=$project/tags

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

for file in `ls $current_dir 2>/dev/null`
do
    if [ -d $current_dir/$file -a -e $current_dir/$file/.env.sh ] 
    then
        cd $current_dir/$file 2>/dev/null
        source .env.sh
        cd - 2>/dev/null
    fi
done

for file in `ls $workspace 2>/dev/null`
do
   if [ -d $workspace/$file/project/bin ] 
   then
        export PATH=$workspace/$file/project/bin:$PATH
   fi
done

unset file
unset current_dir
