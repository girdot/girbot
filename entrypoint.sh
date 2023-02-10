#!/bin/bash

# Install modules specified by env variable
for i in $(echo ${MODULE_REPOS// /} | sed "s/,/ /g")
do
    python3 -m pip install git+https://github.com/$i
done

# Run the bot
girbot
