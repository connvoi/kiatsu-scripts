#!/bin/sh

host=`hostname`

if [ $host = "connvoidev"  ]
then
    echo "connvoi"
else
    echo "others"
fi
