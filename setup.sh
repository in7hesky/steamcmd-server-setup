#!/bin/bash

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
