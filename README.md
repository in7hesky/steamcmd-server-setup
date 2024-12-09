# steamcmd-server-setup
A server setup script for **Debian** which utilises **steamcmd**.
Created for a blank **VPS**.

It's got the `./test_setup.sh` script to test the installation in a **Docker** container beforehand.

## HOW TO USE
Just `git clone` the repo to the VPS **root** directory and run the `prereqs.sh` script, then answer some basic questions. 

It will create an admin **user** and switch to it, and also move this project's directory to a new user's **home**.

Then run `setup.sh` file. Beware that it'll ask to provide the server app's appid, it can be found [here](https://steamdb.info/).
