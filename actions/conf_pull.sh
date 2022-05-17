# make directory if doesn't exist
mkdir ~/backups/conf

# backup conf files from live
cp -rn ~/core/env/dist/etc/* ~/backups/conf/.

# cleanup
cd ~/backups/conf
rm -rf *.dist
cd ~/backups/conf/modules
rm -rf *.dist