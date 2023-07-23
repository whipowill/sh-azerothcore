# make directory if doesn't exist
mkdir /home/azeroth/backups/conf

# backup conf files from live (do not overwrite)
cp -Rn ~/core/env/dist/etc/* ~/backups/conf/.

# cleanup
cd /home/azeroth/backups/conf
rm -rf *.dist
cd /home/azeroth/backups/conf/modules
rm -rf *.dist

# make sure we have permissions to edit
sudo chmod -R 777 ~/backups/conf/