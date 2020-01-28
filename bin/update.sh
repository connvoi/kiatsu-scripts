#!/bin/sh

host=`hostname`

if [ $host = "connvoidev"  ]
then
    #echo "connvoi"
    source /home/kyagi/pyenv/dev/bin/activate
    cd /home/kyagi/project/kiatsu/kiatsu-scripts/bin
else
    source /Users/kyagi/Project/pyenv/data/bin/activate
    cd /Users/kyagi/Project/connvoi-service/kiatsu-scripts/bin
fi

./kiatsu.sh
deactivate