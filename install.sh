#!/usr/bin/env bash
# Author: Darren Klein
# Github repo: https://github.com/darrenklein/trash
# Version: 1.0.1

# Adapted with thanks, from https://github.com/alexanderepstein/Bash-Snippets/blob/master/install.sh
read -p "Install trash? [Y/n]: " answer
    answer=${answer:-Y}

    if [[ "$answer" == [Yy] ]]; then
        echo "Installing trash..."

        latest_tag=$(git describe --tags `git rev-list --tags --max-count=1`)
        git checkout $latest_tag 2>/dev/null

        chmod a+x trash
        cp trash /usr/local/bin > /dev/null 2>&1 || { echo "Failure!"; echo "Error copying file, try running install script as sudo."; exit 1; }

        git checkout master 2>/dev/null

        echo "Successfully installed trash - happy trashing!"
    fi
