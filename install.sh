#!/usr/bin/env bash
# Author: Darren Klein
# Github repo: https://github.com/darrenklein/trash
# Version: 1.0.0

# Adapted with thanks, from https://github.com/alexanderepstein/Bash-Snippets/blob/master/install.sh
read -p "Install trash? [Y/n]: " answer
    answer=${answer:-Y}

    if [[ "$answer" == [Yy] ]]; then
        echo "Installing trash..."
        chmod a+x trash
        cp trash /usr/local/bin > /dev/null 2>&1 || { echo "Failure!"; echo "Error copying file, try running install script as sudo."; exit 1; }
        echo "Successfully installed trash - happy trashing!"
    fi
