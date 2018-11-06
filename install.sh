#!/usr/bin/env bash
# Author: Darren Klein
# Github repo: https://github.com/darrenklein/trash

read -p "Do you wish to install trash? [Y/n]: " answer
    answer=${answer:-Y}

    if [[ "$answer" == [Yy] ]]; then
        cd $1 || return 1
        echo -n "Installing trash: "
        chmod a+x $1
        cp $1 /usr/local/bin > /dev/null 2>&1 || { echo "Failure"; echo "Error copying file, try running install script as sudo"; exit 1; }
        echo "Success"
        cd .. || return 1
    fi