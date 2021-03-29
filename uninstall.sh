#!/bin/bash

# check installation
which magibox > /dev/null
if [ $? -eq 0 ]; then
    pathDir=$(which magibox)

    echo "Remove config"
    rm -rf $HOME/.config/magibox
    sudo rm -rf /usr/share/magibox
    sleep 1

    if [[ ! -d $HOME/.config/magibox ]]; then
    echo "Config file removed"
    sleep 1
    else
    echo "Can't remove config file"
    echo "Uninstall failed!"
    exit 1
    fi

    echo "Remove executable"
    sudo rm $pathDir
    sleep 1

    if [[ ! -f $pathDir ]]; then
    echo "Magibox uninstalled successfully!"
    else
    echo "Failed to remove binnary"
    fi
else
    echo -e "\nNo Magibox instalation found!"
    echo "Nothing todo."
    echo
    exit
fi