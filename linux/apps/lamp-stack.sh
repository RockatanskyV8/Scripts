#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
$missing
fi

if [[ $osname == $debian9 ]]; then
sudo apt install mariadb-client -y
sudo apt install mariadb-server -y
sudo apt install php7.0 -y
sudo apt install php7.0-mysql -y
sudo apt install apache2 -y
sudo apt install libapache2-mod-php7.0 -y
fi

if [[ $osname == $debiansid ]]; then
sudo apt install mariadb-client -y
sudo apt install mariadb-server -y
sudo apt install php7.3 -y
sudo apt install php7.3-mysql -y
sudo apt install apache2 -y
sudo apt install libapache2-mod-php7.3 -y
fi

if [[ $osname == $fedora29 ]]; then
$missing
fi

if [[ $osname == $ubuntu1804 ]]; then
sudo tasksel install lamp-server
fi
