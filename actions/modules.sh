# move to modules folder
cd /home/azeroth/core/modules

# delete existing
rm -rf mod-*

# install modules (you pick what you want)
git clone https://github.com/azerothcore/mod-autobalance.git
#git clone https://github.com/azerothcore/mod-account-achievements.git # FATAL ERROR
git clone https://github.com/azerothcore/mod-account-mounts.git
#git clone https://github.com/azerothcore/mod-learnspells.git # FATAL ERROR
git clone https://github.com/azerothcore/mod-solo-lfg.git
git clone https://github.com/azerothcore/mod-gain-honor-guard
#git clone https://github.com/azerothcore/mod-world-chat.git # just use guild chat instead
git clone https://github.com/azerothcore/mod-starter-guild
git clone https://github.com/azerothcore/mod-transmog.git
git clone https://github.com/azerothcore/mod-ah-bot.git
git clone https://github.com/azerothcore/mod-progression-system
git clone https://github.com/azerothcore/portals-in-all-capitals

# notes to self
echo "/////////////////////////////////////////////////"
echo "!!! REMEMBER YOU NEED TO RECOMPILE BEFORE NEW CONFIGS BECOME USABLE !!!"
echo "/////////////////////////////////////////////////"
