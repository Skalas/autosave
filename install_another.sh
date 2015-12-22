#!/bin/bash
echo "$1"
sed "s|path|$1|g" "check.sh" > /tmp/check.sh
/bin/bash /tmp/check.sh &&
    mkdir -p $HOME/autosave/ &&
    sed "s|path|$1|g" autosave.sh >> $HOME/autosave/autosave.sh &&
    chmod +x $HOME/autosave/autosave.sh
crontab crontab.txt
