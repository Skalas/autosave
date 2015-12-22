#!/bin/bash
sed "s|path|$1|g" "check.sh" > /tmp/check.sh
/bin/bash /tmp/check.sh &&
    mkdir -p $HOME/autosave/ &&
    sed "s|path|$1|g" autosave.sh >> $HOME/autosave/autosave.sh

