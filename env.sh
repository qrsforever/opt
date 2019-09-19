#!/bin/bash

current_dir=`dirname ${BASH_SOURCE[0]}`
current_dir=`cd $current_dir; pwd`

export workspace=/workspace
export data=/data
export projects=/projects
export tags=$projects/tags

# vim 是top级, 由vim加载本脚本
# export PATH=$HOME/.vim/bin:$PATH

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
    if [ -d $2 ]
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
        cd - 1>/dev/null
    fi
done

for file in `ls $workspace/tools 2>/dev/null`
do
   if [ -d $workspace/tools/$file/bin ] 
   then
        export PATH=$workspace/tools/$file/bin:$PATH
   fi
done

if [ -d $HOME/.goldendict ]
then
    rm -rf $HOME/.goldendict
fi

if [ ! -f $HOME/.goldendict ]
then
    ln -s $current_dir/goldendict $HOME/.goldendict 2>/dev/null
fi

unset file
unset current_dir

# 终端提示符简化
xps()
{
    export PS1='\W$ '
}

# 在~/.bashrc添加
# stty stop ''
