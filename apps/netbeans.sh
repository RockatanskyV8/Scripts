#!/bin/bash
source config.sh

if [[ $osname == "arch-linux" ]]; then
$incompatible
fi

if [[ $osname == "debian-9" ]]; then
sudo apt install netbeans -y
sudo bash -c "cat >> /usr/share/netbeans/8.1/etc/netbeans.conf <<- EOM
netbeans_default_options=\"-J-client -J-Xss2m -J-Xms32m -J-XX:PermSize=32m -J-Dawt.useSystemAAFontSettings=on\"
EOM"
fi

if [[ $osname == "debian-sid" ]]; then
$incompatible
fi

if [[ $osname == "fedora-29" ]]; then
$incompatible
fi

if [[ $osname == "ubuntu-18.04" ]]; then
$incompatible
fi

if [[ $osname == "windows-10" ]]; then
choco install netbeans --ignorechecksum -y 
fi
