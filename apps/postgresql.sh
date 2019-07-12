#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    $missing
fi

if [[ $osname == $debian ]]; then
    sudo apt install postgresql postgresql-contrib libpq-dev -y
    sudo systemctl enable postgresql
    
    #sudo su -c "passwd postgres"
    #sudo bash -c "cat strings/config-postgresql > /etc/postgresql/11/main/pg_hba.conf"
fi

if [[ $osname == $fedora ]]; then
    $missing
fi

if [[ $osname == $ubuntu ]]; then
    $missing
fi
