# steamcmd-server-setup
A server setup script for **Debian** which utilises **steamcmd**.
Created for a blank **VPS**.

It's got the `./test_setup.sh` script to test the installation in a **Docker** container beforehand.

## HOW TO USE
Just `git clone` the repo to the VPS **root** directory and run the `prereqs.sh` script, then answer some basic questions. 

It will create an admin **user** and switch to it, and also move this project's directory to a new user's **home**.

Then run `setup.sh` file. Beware that it'll ask to provide the server app's appid, it can be found [here](https://steamdb.info/).

## RUNNING THE SERVER
A command to type inside server app's directory (an example for FOF):
```
./srcds_run -console -game fof +maxplayers 12 +mp_timelimit 25 +map fof_depot +log off +sv_setsteamaccount {server_id}
```
The server_id can be found or registered [here](https://steamcommunity.com/dev/managegameservers).
