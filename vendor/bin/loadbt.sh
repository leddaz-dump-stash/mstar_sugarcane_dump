#!/vendor/bin/sh

vendor=`getprop mstar.bt.vendor`

echo "bt_load_driver $vendor"
insmod /vendor/lib/modules/uhid.ko
case $vendor in
bcm)
insmod /vendor/lib/modules/btusb.ko
sleep 1
;;
bcm_comb)
insmod /vendor/lib/modules/btusb_comb.ko
sleep 1
;;
mtk)
insmod /vendor/lib/modules/bluetooth.ko
insmod /vendor/lib/modules/firmware_class.ko path="/vendor/etc/firmware/"
insmod /vendor/lib/modules/btmtk_usb.ko
sleep 1
;;
csr)
insmod /vendor/lib/modules/bt_usb.ko
sleep 1
;;
rtk)
insmod /vendor/lib/modules/firmware_class.ko path="/vendor/etc/firmware/"
insmod /vendor/lib/modules/rtk_btusb.ko
sleep 1
;;
*)
echo "no bt driver!!!"
;;
esac
