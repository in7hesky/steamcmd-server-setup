#!/bin/bash
script_dir=$(dirname "${BASH_SOURCE[0]}")

read -p "Enter server's abs install_dir path: " install_dir
read -p "Enter server's app_id: " app_id

/usr/games/steamcmd +login anonymous +force_install_dir $install_dir +app_update $app_id validate +quit

if [[ "$app_id" = "295230" ]]; then
    echo "FOF detected. Adding configuration files"
    
    cp /home/$USER/$script_dir/config/fof/mapcycle.txt $install_dir/fof/mapcycle.txt
    cp /home/$USER/$script_dir/config/fof/server.cfg $install_dir/fof/cfg/server.cfg
fi

/bin/bash
