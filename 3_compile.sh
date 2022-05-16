cd ~/core
./acore.sh compiler build

# move to directory
cd ~/core/env/dist/etc/
for i in *.conf.dist
do
  cp -n "$i" "${i}_copy"
  rename 's/.conf.dist_copy/.conf/' *
done
rm -rf *.dist_copy

## move to modules
cd ~/core/env/dist/etc/modules/
for i in *.conf.dist
do
  cp -n "$i" "${i}_copy"
  rename 's/.conf.dist_copy/.conf/' *
done
rm -rf *.dist_copy

## move to home
cd ~
