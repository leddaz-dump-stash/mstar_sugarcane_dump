#!/system/bin/sh
su
/system/bin/mount -o rw,remount /tvconfig
chown system:system /tvconfig/boot0.jpg
chmod 666           /tvconfig/boot0.jpg
chmod 666           /data/boot0.jpg
cp /data/boot0.jpg  /tvconfig/boot0.jpg
rm                  /data/boot0.jpg