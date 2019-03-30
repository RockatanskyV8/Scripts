#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
sudo pacman -S syncthing --noconfirm
sudo systemctl enable syncthing@$username.service
sudo ufw allow syncthing
sudo ufw reload
fi

if [[ $osname == $debian9 ]]; then
sudo apt install syncthing -y
sudo systemctl enable syncthing@$username.service
sudo bash -c "cat >> /etc/ufw/applications.d/syncthing-server <<- EOM
[syncthing]
title=Syncthing
description=Sycthing file synchronisation
ports=22000/tcp|21027/udp
EOM"
sudo ufw allow syncthing
sudo ufw reload
fi

if [[ $osname == $debiansid ]]; then
sudo apt install syncthing -y
sudo systemctl enable syncthing@$username.service
sudo ufw allow syncthing
sudo ufw reload
fi

if [[ $osname == $fedora29 ]]; then
sudo dnf install syncthing -y
sudo systemctl enable syncthing@$username.service
sudo firewall-cmd --add-service=syncthing --permanent
sudo firewall-cmd --reload
fi

if [[ $osname == $ubuntu1804 ]]; then
sudo apt install syncthing -y
sudo systemctl enable syncthing@$username.service
sudo bash -c "cat >> /etc/ufw/applications.d/syncthing-server <<- EOM
[syncthing]
title=Syncthing
description=Sycthing file synchronisation
ports=22000/tcp|21027/udp
EOM"
sudo ufw allow syncthing
sudo ufw reload
fi
