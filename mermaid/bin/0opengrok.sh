#!/bin/bash

opengrok_pro_dir=`pwd`
opengrok_bin_dir=`which OpenGrok`
opengrok_bin_dir=`dirname $opengrok_bin_dir`
opengrok_top_dir=`dirname $opengrok_bin_dir`


echo "Info: opengrok_pro_dir: $opengrok_pro_dir"
echo "Info: opengrok_bin_dir: $opengrok_bin_dir"
echo "Info: opengrok_top_dir: $opengrok_top_dir"

if [[ x$opengrok_bin_dir == x ]]
then
    echo -e "\n Error: Not set path to opengrok/bin!\n"
    exit 1
fi

if [[ x$TOMCAT_HOME == x ]]
then
    echo -e "\n Error: Not set env TOMCAT_HOME!\n"
    exit 1
fi

for pro in ${@}
do
    pro_dir=$opengrok_pro_dir/$pro 
    if [ -d $pro_dir ]
    then
        if [ ! -f $pro_dir/etc/opengrok.conf ]
        then
            echo -e "\n Error: $pro_dir/etc/opengrok.conf file Not found!\n"
            continue
        fi
        echo "Info: Shutdown tomcat for release port"
        $TOMCAT_HOME/bin/shutdown.sh
        sleep 2
        webapp_addr=`cat $pro_dir/etc/opengrok.conf | grep OPENGROK_WEBAPP_CFGADD | cut -d= -f2`
        if [[ x$webapp_addr == x ]]
        then
            webapp_addr=localhost:2424
        fi
        port=`echo $webapp_addr | cut -d\: -f2`
        echo "Info: check port($port):"
        netstat -anp | grep $port

        rm -rf $pro_dir/log/
        rm -rf $pro_dir/etc/configuration.xml
        if [ ! -d $pro_dir/data ]
        then
            mkdir -p $pro_dir/data 
        fi
        if [ ! -d $pro_dir/log ]
        then
            mkdir -p $pro_dir/log
        fi

        echo "Info: Update source.war"
        cp $opengrok_top_dir/lib/source.war ${pro_dir}.war
        unzip ${pro_dir}.war WEB-INF/web.xml
        sed -i -e 's:/var/opengrok/etc/configuration.xml:'"$pro_dir/etc/configuration.xml"':g' "WEB-INF/web.xml"    
        sed -i -e 's/localhost:2424/'"$webapp_addr"'/g' "WEB-INF/web.xml"
        zip ${pro_dir}.war -u WEB-INF/web.xml
        rm -rf WEB-INF

        echo "Info: Deploy ${pro_dir}.war to webapps"
        mv ${pro_dir}.war $TOMCAT_HOME/webapps/

        echo "Info: Delete old ${pro_dir}.war"
        rm -rf $TOMCAT_HOME/${pro_dir}*
        $TOMCAT_HOME/bin/startup.sh
        echo "Info: Sleep 5s for waitting tomcat startup"
        sleep 5

        echo "Info: Start opengrok for $pro_dir"
        OPENGROK_INSTANCE_BASE=$pro_dir \
            OPENGROK_WEBAPP_CONTEXT=$pro \
            OPENGROK_CONFIGURATION=$pro_dir/etc/opengrok.conf \
            OpenGrok index 
    else
        echo "\n Error: $pro_dir directory Not found!\n"
    fi
done
