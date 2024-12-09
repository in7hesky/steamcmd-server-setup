#!/bin/bash
script_dir=$(dirname "${BASH_SOURCE[0]}")

echo "Installing dependencies"

apt update && apt install software-properties-common
add-apt-repository -U http://deb.debian.org/debian -c non-free-firmware -c non-free
dpkg --add-architecture i386
add-apt-repository -U http://deb.debian.org/debian -c non-free-firmware -c non-free
apt update 
echo steam steam/question select "I AGREE" | debconf-set-selections
echo steam steam/license note '' | debconf-set-selections
apt install steamcmd

echo "Setting admin user"

read -p "Enter username: " username
useradd -m $username
read -sp "Enter password: " password
passwd $username << EOF
$password
$password
EOF

mv /$script_dir /home/$username/$script_dir

su - $username
