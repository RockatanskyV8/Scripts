#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
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

if [[ $osname == $debianstable ]]; then
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

if [[ $osname == $debiansid ]]; then
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

if [[ $osname == $fedora ]]; then
sudo dnf install kde-connect -y
fi

if [[ $osname == $ubuntults ]]; then
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
