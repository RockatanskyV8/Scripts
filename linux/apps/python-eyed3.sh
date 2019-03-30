#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
sudo pip install python-magic eyed3
fi

if [[ $osname == $debian9 ]]; then
sudo pip3 install python-magic eyed3
fi

if [[ $osname == $debiansid ]]; then
sudo pip3 install python-magic eyed3
fi

if [[ $osname == $fedora29 ]]; then
sudo pip3 install python-magic eyed3
fi

if [[ $osname == $ubuntu1804 ]]; then
sudo pip3 install python-magic eyed3
fi
