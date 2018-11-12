#!/bin/bash
source config.sh

if [[ $osname == "arch-linux" ]]; then
$missing
fi

if [[ $osname == "debian-9" ]]; then
$missing
fi

if [[ $osname == "debian-sid" ]]; then
$missing
fi

if [[ $osname == "fedora-29" ]]; then
$missing
fi

if [[ $osname == "ubuntu-18.04" ]]; then
$missing
fi

if [[ $osname == "windows-10" ]]; then
choco install bitnami-xampp --ignorechecksum -y
fi
