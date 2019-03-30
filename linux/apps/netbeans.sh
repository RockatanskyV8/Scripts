#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
$incompatible
fi

if [[ $osname == $debian9 ]]; then
sudo apt install netbeans -y
sudo bash -c "cat >> /usr/share/netbeans/8.1/etc/netbeans.conf <<- EOM
netbeans_default_options=\"-J-client -J-Xss2m -J-Xms32m -J-XX:PermSize=32m -J-Dawt.useSystemAAFontSettings=on\"
EOM"
fi

if [[ $osname == $debiansid ]]; then
$incompatible
fi

if [[ $osname == $fedora29 ]]; then
$incompatible
fi

if [[ $osname == $ubuntu1804 ]]; then
$incompatible
fi
