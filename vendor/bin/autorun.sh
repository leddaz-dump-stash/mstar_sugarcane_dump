#!/system/bin/sh
#!/system/bin/sh
/system/bin/mount -o rw,remount /system

busybox cp /system/media/customer.prop /system/customer.prop
echo "/system/media/customer.prop copy over"
chmod 777 /system/customer.prop