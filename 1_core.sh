# prep server
sudo apt update
sudo apt install git

# prepare directory
cd ~
rm -rf core
git clone https://github.com/ZhengPeiRu21/azerothcore-wotlk.git core
# would normally be git clone https://github.com/azerothcore/azerothcore-wotlk.git core
cd core
git checkout Playerbot
git pull origin Playerbot
# would normally not have to checkout branch

# install dependencies
./acore.sh install-deps

# install game files
./acore.sh client-data

# back to home
cd ~
