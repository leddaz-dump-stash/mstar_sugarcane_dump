#!/vendor/bin/sh
driver_module=`getprop mstar.wlan.prev.driver`
echo "wifi_unload_apdriver $driver_module"
case $driver_module in
RAL5370)
ifconfig p2p0 down
ifconfig wlan0 down
rmmod rt5572sta.ko
;;
MT7603STA)
ifconfig p2p0 down
ifconfig wlan0 down
rmmod mt7603u_sta.ko
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
RTL8812AUS)
ifconfig p2p0 down
ifconfig wlan0 down
rmmod 8812au.ko
;;
RTL8188ETV)
ifconfig p2p0 down
ifconfig wlan0 down
rmmod 8188eu.ko
;;
MT7662STA)
ifconfig p2p0 down
ifconfig wlan0 down
rmmod mt7662u_sta.ko
;;
MT7601STA)
ifconfig p2p0 down
ifconfig wlan0 down
rmmod mt7601Usta.ko
;;
BCM43438)
ifconfig wlan0 down
ifconfig p2p0 down
rmmod bcmdhd.ko
;;
BCM43569)
ifconfig wlan0 down
ifconfig p2p0 down
rmmod bcmdhd.ko
;;
MT7668STA)
ifconfig wlan0 down
ifconfig sta0 down
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
