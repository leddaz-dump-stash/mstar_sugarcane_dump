#!/system/bin/sh
su
/system/bin/mount -o rw,remount /system
chown system:system         /system/media/bootanimation.zip
chmod 666                   /system/media/bootanimation.zip
chmod 666                   /data/bootanimation.zip
cp /data/bootanimation.zip  /system/media/bootanimation.zip
rm                         /data/bootanimation.zip