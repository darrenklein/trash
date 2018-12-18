#!/usr/bin/env bash
# Author: Darren Klein
# Github repo: https://github.com/darrenklein/trash
# Version: 1.0.0

read -p "Uninstall trash? [Y/n]: " answer
    answer=${answer:-Y}

    if [[ "$answer" == [Yy] ]]; then
        echo "Uninstalling trash..."
        rm /usr/local/bin/trash > /dev/null 2>&1 || { echo "Failure!"; echo "Error deleting file, try running uninstall script as sudo."; exit 1; }
        echo "Successfully uninstalled trash."
    fi
