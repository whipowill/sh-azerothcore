# prep server
sudo apt update
sudo apt install git

BASE_DIR="$1"

# prepare directory
cd "$BASE_DIR"
sudo rm -rf core

# download core
git clone https://github.com/trickerer/AzerothCore-wotlk-with-NPCBots.git core --depth 1

# install dependencies
"$BASE_DIR/core/acore.sh" install-deps

# install game files
"$BASE_DIR/core/acore.sh" client-data

# make logs folder
mkdir "$BASE_DIR/logs"

# make backups folder
mkdir "$BASE_DIR/backups"
