# update core
cd ~
cd core
git pull origin Playerbot
# normally would be git pull

# update modules
sh ~/scripts/2_modules.sh

# recompile
sh ~/scripts/3_compile.sh

# reset db
sh ~/scripts/4_database.sh
