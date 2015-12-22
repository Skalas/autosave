#!/bin/bash
echo "$1"
sed "s|path|$1|g" "check.sh" > /tmp/check.sh
/bin/bash /tmp/check.sh &&
    mkdir -p $HOME/autosave/ &&
    echo "#!/bin/bash" > $HOME/autosave/autosave.sh &&
    sed "s|path|$1|g" autosave.sh >> $HOME/autosave/autosave.sh &&
    chmod +x $HOME/autosave/autosave.sh &&
    sed "s|~|$HOME|g" "crontab" > crontab.txt

