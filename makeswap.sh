#!/bin/sh

# https://raw.githubusercontent.com/shatll-s/scripts/main/makeswap.sh
# curl -sSf -L https://raw.githubusercontent.com/shatll-s/scripts/main/makeswap.sh | sudo sh -s 16G
[ ! -z $1 ] && size=$1 || size="8G"

echo "Make swap: $size"

sudo -i
fallocate -l 8G /swapfile
chmod 600 /swapfile
mkswap /swapfile
swapon /swapfile
echo "/swapfile    none    swap    sw    0    0" >> /etc/fstab
echo "Ok!"
