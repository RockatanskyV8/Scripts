#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
    $missing
fi

if [[ $osname == $debian ]]; then
    sudo apt install postgresql postgresql-contrib libpq-dev -y
    sudo systemctl enable postgresql
    # sudo su -c "passwd postgres"
    # sudo bash -c "cat strings/config-postgresql > /etc/postgresql/11/main/pg_hba.conf"
    # sudo ufw allow postgresql
    # sudo ufw reload
fi

if [[ $osname == $fedora ]]; then
    sudo dnf install postgresql-server postgresql
    sudo postgresql-setup initdb
    sudo systemctl enable postgresql
    # sudo su -c "passwd postgres"
    # sudo bash -c "cat strings/config-postgresql > /var/lib/pgsql/data/pg_hba.conf"
    # sudo firewall-cmd --add-service=postgresql --permanent
    # sudo firewall-cmd --reload
fi

if [[ $osname == $ubuntu ]]; then
    $missing
fi
