#!/bin/bash

# cheat.sh integrated with tmux and fzf

languages=`echo "golang cpp c nodejs php" | tr ' ' '\n'`
core_utils=`echo "xargs find mv sed awk ls ip" | tr ' ' '\n'`

selected=`printf "$languages\n$core_utils" | fzf`
read -p "query: " query

if printf $languages | grep -qs $selected; then
    tmux neww bash -c "curl cht.sh/$selected/`echo $query | tr ' ' '+'` & while [ : ]; do sleep 1; done"
else
    tmux neww bash -c "curl cht.sh/$selected~$query & while [ : ]; do sleep 1; done"
fi
