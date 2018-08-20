#!/bin/bash
# need to be executed as root FROM the root folder
# you can use su - (with the hyphen) to achieve that

if [[ $(whoami) == "root" ]]; then
if [[ $(pwd) == "/root" ]]; then
# configuration
size="2048000" # 2GB
swap_location="/swap"

# creates a file at the defined location filled with zeroes
dd if=/dev/zero of=$swap_location bs=1024 count=$size
# sets the right permissions
chown root $swap_location
chmod 0600 $swap_location
# create the swap on the file
mkswap $swap_location

# adds the file to the fstab, to auto activate the swap
sudo bash -c "cat >> /etc/fstab <<- EOM
# Swap
$swap_location none swap sw 0 0
EOM"

echo "Done!"
else
echo "You need to be at the /root folder to perform this operation"
fi
else
echo "You need to be root to perform this operation"
fi
