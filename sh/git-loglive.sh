!/bin/bash

while :
do
    clear
    git --no-pager log -15 --graph --pretty=oneline --abbrev-commit --decorate --all $*
    sleep 1
done
