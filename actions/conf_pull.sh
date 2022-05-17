# make directory if doesn't exist
mkdir ~backups/conf

# backup conf files from live
cp -rn ~/core/env/dist/etc/* ~/backups/conf/.

# cleanup
cd conf
rm -rf *.dist
cd modules
rm -rf *.dist
