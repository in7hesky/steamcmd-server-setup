#!/bin/bash

echo "Installing dependencies"

apt update && apt install software-properties-common
apt-add-repository non-free && dpkg --add-architecture i386
apt update && sudo apt install steamcmd

echo "Setting admin user"

read -p "Enter username: " username
useradd -m $username
read -sp "Enter password: " password
passwd $username << EOF
$password
$password
EOF

su - $username

/bin/bash
