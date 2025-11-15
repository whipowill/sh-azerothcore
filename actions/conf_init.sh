BASE_DIR="$1"
sudo chmod -R 777 "$BASE_DIR/core/env/dist/etc/"

# move to directory
cd "$BASE_DIR/core/env/dist/etc/"
rm -rf *_copy
rm -rf *.conf
for i in *.conf.dist
do
  cp "$i" "${i}_copy"
done
rename 's/.conf.dist_copy/.conf/' *
rm -rf *.dist_copy

## move to modules
cd "$BASE_DIR/core/env/dist/etc/modules/"
rm -rf *_copy
rm -rf *.conf
for i in *.conf.dist
do
  cp "$i" "${i}_copy"
done
rename 's/.conf.dist_copy/.conf/' *
rm -rf *.dist_copy
