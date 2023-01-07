[[ ! -z $1 ]] && size=$1 || size="8G"

sudo -i
fallocate -l 8G /swapfile
chmod 600 /swapfile
mkswap /swapfile
swapon /swapfile
echo "/swapfile    none    swap    sw    0    0" >> /etc/fstab
echo "Ok!"
