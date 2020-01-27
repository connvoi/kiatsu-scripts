#!/bin/bash +x

cd ../scripts

#update citydata
python mk_cityjson.py
cp ../data/city/* ../../kiatsu-jykell/_data/city/

#cityのhtmlの作成(普段はやらなくてよい。)
python mk_citypage.py
cp ../html/city/* ../../kiatsu-jykell/city/

cd ../../kiatsu-jykell/
git add .
git commit -m "updated"
git push origin master