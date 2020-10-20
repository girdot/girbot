#!/bin/bash
cd /girbot
rm -rf commands
git pull
git reset --hard
python3 -m pip install -r requirements.txt
cd commands
for i in $(echo ${MODULE_REPOS// /} | sed "s/,/ /g")
do
    git clone https://github.com/$i
done
find . -name "requirements.txt" -exec python3 -m pip install -r requirements.txt
cd ..
python3 main.py
