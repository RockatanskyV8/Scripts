#!/bin/bash
source config.sh

if [[ $osname == "arch-linux" ]]; then
$incompatible
fi

if [[ $osname == "debian-9" ]]; then
$incompatible
fi

if [[ $osname == "debian-sid" ]]; then
$incompatible
fi

if [[ $osname == "fedora-29" ]]; then
$incompatible
fi

if [[ $osname == "ubuntu-18.04" ]]; then
$incompatible
fi
