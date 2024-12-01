# prep server
sudo apt update
sudo apt install git

# prepare directory
cd ~
sudo rm -rf core

# download core
git clone https://github.com/trickerer/AzerothCore-wotlk-with-NPCBots.git --depth 1

# install dependencies
~/core/acore.sh install-deps

# install game files
~/core/acore.sh client-data

# make logs folder
mkdir ~/logs

# make backups folder
mkdir ~/backups