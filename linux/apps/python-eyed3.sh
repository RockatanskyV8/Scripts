#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    sudo pip install python-magic eyed3
fi

if [[ $osname == $debianstable ]]; then
    sudo pip3 install python-magic eyed3
fi

if [[ $osname == $debiansid ]]; then
    sudo pip3 install python-magic eyed3
fi

if [[ $osname == $fedora ]]; then
    sudo pip3 install python-magic eyed3
fi

if [[ $osname == $ubuntults ]]; then
    sudo pip3 install python-magic eyed3
fi
