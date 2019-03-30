#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
sudo pip install xlsxwriter
fi

if [[ $osname == $debian9 ]]; then
sudo pip3 install xlsxwriter
fi

if [[ $osname == $debiansid ]]; then
sudo pip3 install xlsxwriter
fi

if [[ $osname == $fedora29 ]]; then
sudo pip3 install xlsxwriter
fi

if [[ $osname == $ubuntu1804 ]]; then
sudo pip3 install xlsxwriter
fi
