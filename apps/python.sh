#!/bin/bash
source config.sh

if [[ $osname == "arch-linux" ]]; then
sudo apt install python -y
sudo apt install python-pip -y
fi

if [[ $osname == "debian-9" ]]; then
sudo apt install python3 -y
sudo apt install python3-pip -y
fi

if [[ $osname == "debian-sid" ]]; then
sudo apt install python3 -y
sudo apt install python3-pip -y
fi

if [[ $osname == "fedora-29" ]]; then
sudo apt install python -y
sudo apt install python-pip -y
fi

if [[ $osname == "ubuntu-18.04" ]]; then
sudo apt install python3 -y
sudo apt install python3-pip -y
fi

if [[ $osname == "windows-10" ]]; then
choco install python --ignorechecksum -y
fi
