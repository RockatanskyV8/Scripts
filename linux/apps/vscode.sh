#!/bin/bash
source config.sh

if [[ $osname == $archlinux ]]; then
git clone https://aur.archlinux.org/visual-studio-code-bin
cd visual-studio-code-bin
makepkg -si --noconfirm
cd ..
rm -rf visual-studio-code-bin
fi

if [[ $osname == $debianstable ]]; then
sudo mkdir /tmp/code
sudo wget $link_vscode_key -O /tmp/code/code.asc
sudo apt-key add /tmp/code/code.asc
sudo rm -r /tmp/code
sudo bash -c "cat >> /etc/apt/sources.list.d/vscode.list <<- EOM
deb [arch=amd64] http://packages.microsoft.com/repos/vscode stable main
EOM"
sudo apt update
sudo apt install code -y
fi

if [[ $osname == $debiansid ]]; then
sudo mkdir /tmp/code
sudo wget $link_vscode_key -O /tmp/code/code.asc
sudo apt-key add /tmp/code/code.asc
sudo rm -r /tmp/code
sudo bash -c "cat >> /etc/apt/sources.list.d/vscode.list <<- EOM
deb [arch=amd64] http://packages.microsoft.com/repos/vscode stable main
EOM"
sudo apt update
sudo apt install code -y
fi

if [[ $osname == $fedora ]]; then
sudo dnf install $link_vscode_rpm -y
fi

if [[ $osname == $ubuntults ]]; then
sudo mkdir /tmp/code
sudo wget $link_vscode_key -O /tmp/code/code.asc
sudo apt-key add /tmp/code/code.asc
sudo rm -r /tmp/code
sudo bash -c "cat >> /etc/apt/sources.list.d/vscode.list <<- EOM
deb [arch=amd64] http://packages.microsoft.com/repos/vscode stable main
EOM"
sudo apt update
sudo apt install code -y
fi
