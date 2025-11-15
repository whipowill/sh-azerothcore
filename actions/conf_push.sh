BASE_DIR="$1"
# copy backup conf files to live
sudo cp -R "$BASE_DIR/backups/conf/"* "$BASE_DIR/core/env/dist/etc/"
