#!/vendor/bin/sh
driver_module=`getprop mstar.wlan.prev.driver`
echo "wifi_load_driver $driver_module"
case $driver_module in
RAL5370)
ifconfig p2p0 down
ifconfig wlan0 down
rmmod rt5572sta.ko
;;
RTL8192CU)
ifconfig p2p0 down
ifconfig wlan0 down
rmmod 8192cu.ko
;;
RTL8192DU)
ifconfig p2p0 down
ifconfig wlan0 down
rmmod 8192du.ko
;;
RTL8192EU)
ifconfig p2p0 down
ifconfig wlan0 down
rmmod 8192eu.ko
;;
RTL8723BU)
ifconfig p2p0 down
ifconfig wlan0 down
rmmod 8723bu.ko
;;
RTL8812AUS)
ifconfig p2p0 down
ifconfig wlan0 down
rmmod 8812au.ko
;;
ATH1021|ATH9375)
ifconfig wlan0 down
ifconfig p2p0 down
rmmod ath6kl_usb.ko
rmmod compat.ko
;;
RTL8188ETV)
ifconfig p2p0 down
ifconfig wlan0 down
rmmod 8188eu.ko
;;
RTL8712U)
ifconfig wlan0 down
rmmod 8712u.ko
;;
ATH9374)
ifconfig wlan0 down
ifconfig p2p0 down
rmmod ath6kl_usb.ko
rmmod compat.ko
;;
MT7662STA)
ifconfig wlan0 down
ifconfig p2p0 down
rmmod mt7662u_sta.ko
;;
MT7603STA)
ifconfig wlan0 down
ifconfig p2p0 down
rmmod mt7603u_sta.ko
;;
MT7601STA)
ifconfig wlan0 down
ifconfig p2p0 down
rmmod mt7601Usta.ko
;;
BCM43438)
ifconfig wlan0 down
ifconfig p2p0 down
rmmod bcmdhd.ko
;;
MT7668STA)
ifconfig ap0 down
ifconfig p2p0 down
ifconfig wlan0 down
rmmod wlan_mt7668_usb.ko
;;
RTL8822BS)
ifconfig wlan0 down
ifconfig p2p0 down
rmmod 88x2bs.ko
;;
*)
echo "no driver"
esac
