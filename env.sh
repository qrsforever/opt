#!/bin/bash

current_dir=`dirname ${BASH_SOURCE[0]}`
current_dir=`cd $current_dir; pwd`

export workspace=/workspace
export data=/data
export projects=/projects
export tags=$projects/tags

make_opt_link()
{
    if [[ $# < 2 ]]
    then
        echo "Use: make_opt_link link_name link_path"
        return
    fi

    if [ -L /opt/$1 ]
    then
        rm -f /opt/$1
    fi
    ln -s $2 /opt/$1
}

for file in `ls $current_dir 2>/dev/null`
do
    if [ -d $current_dir/$file -a -e $current_dir/$file/.env.sh ] 
    then
        cd $current_dir/$file 2>/dev/null
        source .env.sh
        cd - 1>/dev/null
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

# 终端提示符简化
xps()
{
    export PS1='\W$ '
}

# 在~/.bashrc添加
# stty stop ''
