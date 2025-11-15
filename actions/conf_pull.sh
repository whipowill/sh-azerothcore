BASE_DIR="$1"
# make directory if doesn't exist
mkdir -p "$BASE_DIR/backups/conf"

# backup conf files from live (do not overwrite)
cp -Rn "$BASE_DIR/core/env/dist/etc/"* "$BASE_DIR/backups/conf/."

# cleanup
cd "$BASE_DIR/backups/conf"
rm -rf *.dist
cd "$BASE_DIR/backups/conf/modules"
rm -rf *.dist

# make sure we have permissions to edit
sudo chmod -R 777 "$BASE_DIR/backups/conf/"
