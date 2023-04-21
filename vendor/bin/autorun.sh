#!/system/bin/sh
#!/system/bin/sh
#/system/bin/mount -o rw,remount /system

#busybox cp /system/media/customer.prop /system/customer.prop
#echo "/system/media/customer.prop copy over"
#chmod 777 /system/customer.prop

p2p_config='/data/p2p_config'
ap_wps_vendor_ext='/data/p2p_config/ap_wps_vendor_ext.config'
if [ ! -d "$p2p_config" ];then
mkdir $p2p_config
fi
chmod 777 $p2p_config
if [ ! -f "$ap_wps_vendor_ext" ];then
echo "" > $ap_wps_vendor_ext
fi
chmod 666 $ap_wps_vendor_ext