# move to modules folder
BASE_DIR="$1"
cd "$BASE_DIR/core/modules"

# delete existing
rm -rf -- ./*/

# install modules (you pick what you want)
#git clone https://github.com/azerothcore/mod-world-chat.git # just use guild chat instead
git clone https://github.com/azerothcore/mod-progression-system
git clone https://github.com/azerothcore/mod-autobalance.git
git clone https://github.com/azerothcore/mod-ah-bot.git
git clone https://github.com/azerothcore/mod-account-mounts.git
git clone https://github.com/azerothcore/mod-transmog.git
git clone https://github.com/noisiver/mod-learnspells
git clone https://github.com/azerothcore/mod-solo-lfg.git
git clone https://github.com/azerothcore/mod-gain-honor-guard
git clone https://github.com/azerothcore/mod-cta-switch
git clone https://github.com/azerothcore/mod-starter-guild
git clone https://github.com/noisiver/mod-guildfunds
#git clone https://github.com/heyitsbench/mod-arac # over the top if you ask me
git clone https://github.com/azerothcore/mod-pvp-titles
git clone https://github.com/AnchyDev/DungeonRespawn
git clone https://github.com/dunjeon/mod-TimeIsTime
git clone https://github.com/pangolp/mod-quest-loot-party
git clone https://github.com/Gozzim/mod-starting-pet
git clone https://github.com/BytesGalore/mod-no-hearthstone-cooldown

# notes to self
echo "/////////////////////////////////////////////////"
echo "!!! REMEMBER YOU NEED TO RECOMPILE BEFORE NEW CONFIGS BECOME USABLE !!!"
echo "/////////////////////////////////////////////////"
