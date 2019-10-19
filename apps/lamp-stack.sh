#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    $missing
fi

if [[ $osname == $debian ]]; then
    sudo apt install mariadb-client -y
    sudo apt install mariadb-server -y
    sudo apt install php7.3 -y
    sudo apt install php7.3-mysql -y
    sudo apt install apache2 -y
    sudo apt install libapache2-mod-php7.3 -y
fi

if [[ $osname == $fedora ]]; then
    sudo dnf install httpd -y
    sudo systemctl enable httpd
    sudo dnf -y install php php-cli php-php-gettext php-mbstring php-mcrypt php-mysqlnd php-pear php-curl php-gd php-xml php-bcmath php-zip -y
    sudo dnf install mariadb-server -y
    sudo systemctl enable mariadb
fi

if [[ $osname == $ubuntu ]]; then
    sudo tasksel install lamp-server
fi
