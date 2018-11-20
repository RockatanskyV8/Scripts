#!/bin/bash
source config.sh

if [[ $osname == "arch-linux" ]]; then
sudo pakku -S visual-studio-code-bin
fi

if [[ $osname == "debian-9" ]]; then
sudo mkdir /tmp/code
sudo wget https://packages.microsoft.com/keys/microsoft.asc -P /tmp/code
sudo apt-key add /tmp/code/microsoft.asc
sudo rm -r /tmp/code
sudo bash -c "cat >> /etc/apt/sources.list.d/vscode.list <<- EOM
deb [arch=amd64] http://packages.microsoft.com/repos/vscode stable main
EOM"
sudo apt update
sudo apt install code -y
fi

if [[ $osname == "debian-sid" ]]; then
sudo mkdir /tmp/code
sudo wget https://packages.microsoft.com/keys/microsoft.asc -P /tmp/code
sudo apt-key add /tmp/code/microsoft.asc
sudo rm -r /tmp/code
sudo bash -c "cat >> /etc/apt/sources.list.d/vscode.list <<- EOM
deb [arch=amd64] http://packages.microsoft.com/repos/vscode stable main
EOM"
sudo apt update
sudo apt install code -y
fi

if [[ $osname == "fedora-29" ]]; then
$missing
fi

if [[ $osname == "ubuntu-18.04" ]]; then
sudo mkdir /tmp/code
sudo wget https://packages.microsoft.com/keys/microsoft.asc -P /tmp/code
sudo apt-key add /tmp/code/microsoft.asc
sudo rm -r /tmp/code
sudo bash -c "cat >> /etc/apt/sources.list.d/vscode.list <<- EOM
deb [arch=amd64] http://packages.microsoft.com/repos/vscode stable main
EOM"
sudo apt update
sudo apt install code -y
fi
