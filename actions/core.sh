# prep server
sudo apt update
sudo apt install git

# prepare directory
cd ~
sudo rm -rf core

# download playerbot core (testing)
#git clone https://github.com/ZhengPeiRu21/azerothcore-wotlk.git core
#cd core
#git checkout Playerbot
#git pull origin Playerbot

# download core
git clone https://github.com/azerothcore/azerothcore-wotlk.git core

# install dependencies
~/core/acore.sh install-deps

# install game files
~/core/acore.sh client-data

# make logs folder
mkdir ~/logs

# make backups folder
mkdir ~/backups