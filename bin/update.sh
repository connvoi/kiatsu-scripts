#!/bin/sh

host=`hostname`

if [ $host = "connvoidev"  ]
then
    #echo "connvoi"
    cd /home/kyagi/project/kiatsu/kiatsu-scripts/bin
else
    cd /Users/kyagi/Project/connvoi-service/kiatsu-scripts
fi

./kiatsu.sh