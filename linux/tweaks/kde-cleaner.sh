#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
sudo pacman -R konqueror --noconfirm
sudo pacman -R kwrite --noconfirm
fi

if [[ $osname == $debianstable ]]; then
$missing
fi

if [[ $osname == $debiansid ]]; then
$missing
fi

if [[ $osname == $fedora ]]; then
sudo dnf remove dnfdragora -y
sudo dnf remove system-config-language -y
sudo dnf remove firewall-config -y
sudo dnf remove qt5-qdbusviewer -y
sudo dnf remove calligra* -y
sudo dnf remove kmail -y
sudo dnf remove kaddressbook -y
sudo dnf remove korganizer -y
sudo dnf remove kolourpaint -y
sudo dnf remove kcolorchooser -y
sudo dnf remove kruler -y
sudo dnf remove akregator -y
sudo dnf remove falkon -y
sudo dnf remove kget -y
sudo dnf remove konqueror -y
sudo dnf remove konversation -y
sudo dnf remove krdc -y
sudo dnf remove krfb -y
sudo dnf remove ktorrent -y
sudo dnf remove dragonplayer -y
sudo dnf remove juk -y
sudo dnf remove k3b -y
sudo dnf remove kamoso -y
sudo dnf remove kpat -y
sudo dnf remove kmahjongg -y
sudo dnf remove kmines -y
sudo dnf remove mediawriter -y
sudo dnf remove fedora-release-notes -y
sudo dnf remove gnome-abrt -y
sudo dnf remove kcharselect -y
sudo dnf remove kgpg -y
sudo dnf remove kmag -y
sudo dnf remove kmousetool -y
sudo dnf remove kmouth -y
sudo dnf remove krusader -y
fi

if [[ $osname == $ubuntults ]]; then
$missing
fi
