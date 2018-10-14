#!/bin/bash
source config.sh

# installs the desktop environment
sudo apt install gnome-core -y

# removes some little bloat and firefox-est (to install quantum later)
sudo apt purge mutt tracker -y

sudo reboot
