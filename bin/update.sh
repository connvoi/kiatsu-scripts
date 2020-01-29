#!/bin/sh

host=`hostname`

if [ $host = "connvoidev"  ]
then
    #echo "connvoi"
    activate=/home/kyagi/pyenv/dev/bin/activate
    home=/home/kyagi/project/kiatsu
else
    activate=/Users/kyagi/Project/pyenv/data/bin/activate
    home=/Users/kyagi/Project/connvoi-service/
fi

htmlhome=$home/kiatsu-jykell
scriptshome=$home/kiatsu-scripts
bindir=$scriptshome/bin
scriptsdir=$scriptshome/scripts
