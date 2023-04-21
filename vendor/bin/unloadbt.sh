#!/vendor/bin/sh

vendor=`getprop mstar.bt.vendor`

echo "bt_unload_driver $vendor"
rmmod uhid.ko
case $vendor in
bcm)
rmmod btusb.ko
sleep 1
;;
bcm_comb)
rmmod btusb_comb.ko
sleep 1
;;
mtk)
rmmod btmtk_usb.ko
rmmod firmware_class.ko
rmmod bluetooth.ko
sleep 1
;;
csr)
rmmod bt_usb.ko
sleep 1
;;
rtk)
rmmod rtk_btusb.ko
rmmod firmware_class.ko
sleep 1
;;
*)
echo "no bt driver!!!"
;;
esac
