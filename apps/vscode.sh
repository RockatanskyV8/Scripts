#!/bin/bash
source config.sh

link_vscode_key="https://packages.microsoft.com/keys/microsoft.asc"
link_vscode_rpm="https://packages.microsoft.com/yumrepos/vscode/code-1.30.0-1544567256.el7.x86_64.rpm"

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
    sudo bash -c "cat strings/config-vscode-deb-repo > /etc/apt/sources.list.d/vscode.list"
    sudo apt update
    sudo apt install code -y
fi

if [[ $osname == $debiansid ]]; then
    sudo mkdir /tmp/code
    sudo wget $link_vscode_key -O /tmp/code/code.asc
    sudo apt-key add /tmp/code/code.asc
    sudo rm -r /tmp/code
    sudo bash -c "cat strings/config-vscode-deb-repo > /etc/apt/sources.list.d/vscode.list"
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
    sudo bash -c "cat strings/config-vscode-deb-repo > /etc/apt/sources.list.d/vscode.list"
    sudo apt update
    sudo apt install code -y
fi
