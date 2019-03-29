#!/bin/bash
source config.sh

if [[ $osname == "arch-linux" ]]; then
sudo pacman -S kdeconnect --noconfirm
sudo bash -c "cat >> /etc/ufw/applications.d/kdeconnect <<- EOM
[kdeconnect]
title=KDE Connect
description=KDE Connect
ports=1714:1764/tcp|1714:1764/udp
EOM"
sudo ufw allow kdeconnect
sudo ufw reload
fi

if [[ $osname == "debian-9" ]]; then
sudo apt install kdeconnect -y
sudo bash -c "cat >> /etc/ufw/applications.d/kdeconnect <<- EOM
[kdeconnect]
title=KDE Connect
description=KDE Connect
ports=1714:1764/tcp|1714:1764/udp
EOM"
sudo ufw allow kdeconnect
sudo ufw reload
fi

if [[ $osname == "debian-sid" ]]; then
sudo apt install kdeconnect -y
sudo bash -c "cat >> /etc/ufw/applications.d/kdeconnect <<- EOM
[kdeconnect]
title=KDE Connect
description=KDE Connect
ports=1714:1764/tcp|1714:1764/udp
EOM"
sudo ufw allow kdeconnect
sudo ufw reload
fi

if [[ $osname == "fedora-29" ]]; then
sudo dnf install kde-connect -y
fi

if [[ $osname == "ubuntu-18.04" ]]; then
sudo apt install kdeconnect -y
sudo bash -c "cat >> /etc/ufw/applications.d/kdeconnect <<- EOM
[kdeconnect]
title=KDE Connect
description=KDE Connect
ports=1714:1764/tcp|1714:1764/udp
EOM"
sudo ufw allow kdeconnect
sudo ufw reload
fi
