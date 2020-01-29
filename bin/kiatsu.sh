#!/bin/bash +x

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

source $activate

cd $htmlhome
echo $htmlhome
git pull origin master

cd $scriptsdir

#update citydata
python mk_cityjson.py
cp $scriptshome/data/city/* $htmlhome/_data/city/

#cityのhtmlの作成(普段はやらなくてよい。)
python mk_citypage.py
cp $scriptshome/html/city/* $htmlhome/city/

cd $htmlhome
git add .
git commit -m "updated"
git push origin master
deactivate