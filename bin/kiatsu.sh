#!/bin/bash +x

. ./update.sh

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