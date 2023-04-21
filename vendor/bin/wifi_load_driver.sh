#!/vendor/bin/sh
modules=`cat /proc/modules|grep rtkm`
if [ -z "$modules" ]; then
    insmod /vendor/lib/modules/firmware_class.ko path="/vendor/etc/firmware/"
    insmod /vendor/lib/modules/cfg80211.ko
    insmod /vendor/lib/modules/mtprealloc.ko
    insmod /vendor/lib/modules/rtkm.ko
fi

setprop mstar.wlanscript.run 1

wlan_fast_connect_path=`getprop mstar.wlan.fast.connect.path`
if ! [ -z "$wlan_fast_connect_path" ]; then
    echo 1 > $wlan_fast_connect_path
fi

wlan_persist_path=`getprop mstar.wlan.persist.path`
if ! [ -z "$wlan_persist_path" ]; then
    echo 1 > $wlan_persist_path
fi

driver_module=`getprop mstar.wlan.driver`
echo "wifi_load_driver $driver_module"
case $driver_module in
RAL5370)
insmod /vendor/lib/modules/rt5572sta.ko
;;
RTL8192CU)
insmod /vendor/lib/modules/8192cu.ko ifname=wlan0 if2name=p2p0
;;
RTL8192DU)
insmod /vendor/lib/modules/8192du.ko ifname=wlan0 if2name=p2p0
;;
RTL8192EU)
insmod /vendor/lib/modules/8192eu.ko ifname=wlan0 if2name=p2p0
;;
ATH1021)
insmod /vendor/lib/modules/cfg80211_ath6k.ko
insmod /vendor/lib/modules/ath6kl_usb.ko chip_pwd_l=0 ht40_24ghz=1 htcoex=1 ath6kl_p2p=1
iw dev wlan0 interface add p2p0 type managed
;;
RTL8723BU)
insmod /vendor/lib/modules/8723bu.ko ifname=wlan0 if2name=p2p0
;;
RTL8812AUS)
insmod /vendor/lib/modules/8812au.ko ifname=wlan0 if2name=p2p0
;;
RTL88X2BU)
insmod /vendor/lib/modules/88x2bu.ko ifname=wlan0 if2name=p2p0
;;
RTL8188ETV)
insmod /vendor/lib/modules/8188eu.ko ifname=wlan0 if2name=p2p0
;;
RTL8712U)
insmod /vendor/lib/modules/8712u.ko
;;
ATH9375)
insmod /vendor/lib/modules/compat_9375.ko
insmod /vendor/lib/modules/cfg80211_ath6k_9375.ko
insmod /vendor/lib/modules/ath6kl_usb_9375.ko ath6kl_p2p=0x19 debug_quirks=0x200
iw dev wlan0 interface add p2p0 type managed
;;
ATH9374)
insmod /vendor/lib/modules/widi/compat_9374.ko
insmod /vendor/lib/modules/widi/cfg80211_ath6k_9374.ko
insmod /vendor/lib/modules/widi/ath6kl_usb_9374.ko chip_pwd_l=0 ht40_24ghz=1 htcoex=1 ath6kl_p2p=1
iw dev wlan0 interface add p2p0 type managed
;;
MT7662STA)
insmod /vendor/lib/modules/mt7662u_sta.ko
;;
MT7603STA)
insmod /vendor/lib/modules/mt7603u_sta.ko
;;
MT7601STA)
insmod /vendor/lib/modules/mt7601Usta.ko
;;
BCM43438)
insmod /vendor/lib/modules/bcmdhd.ko "firmware_path=/vendor/etc/wifi/fw_bcm43438a0.bin nvram_path=/vendor/etc/wifi/nvram_ap6212.txt"
;;
MT7668STA)
insmod /vendor/lib/modules/wlan_mt7668_usb.ko
;;
RTL8822BS)
insmod /vendor/lib/modules/88x2bs.ko ifname=wlan0 if2name=p2p0
;;
*)
echo "no driver!!!"
;;
esac

