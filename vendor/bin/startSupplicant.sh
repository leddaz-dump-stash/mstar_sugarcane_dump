#!/vendor/bin/sh

driver_module=`getprop mstar.wlan.driver`
echo "startSupplicant $driver_module"
case $driver_module in
RTL8192CU|RTL8192DU|RTL8192EU|RTL8812AUS|RTL8188ETV|RTL8822BS|RTL88X2BU)
/vendor/bin/hw/wpa_supplicant -ip2p0 -Dnl80211 -c/data/misc/wifi/p2p_supplicant.conf -e /data/misc/wifi/entropy.bin \
    -puse_p2p_group_interface=0 -N \
    -iwlan0 -Dnl80211 -c/data/misc/wifi/wpa_supplicant.conf \
    -g/data/system/wpa_supplicant/wlan0 -G1010 -O/data/misc/wifi/sockets
;;
##############################
ATH1021)
#make sure atheros confs exist before atheros fixed bug use the default wpa_supplicant
if [ ! -f /data/misc/wifi/athwpa_supplicant.conf ]; then
    echo "/data/misc/wifi/athwpa_supplicant.conf does not exist, copy /system/etc/wifi/athwpa_supplicant.conf"
    cp /system/etc/wifi/athwpa_supplicant.conf /data/misc/wifi/athwpa_supplicant.conf
    chmod 777 /data/misc/wifi/athwpa_supplicant.conf
fi

if [ ! -f /data/misc/wifi/athp2p_supplicant.conf ]; then
    echo "/data/misc/wifi/athp2p_supplicant.conf does not exist, copy /system/etc/wifi/athp2p_supplicant.conf"
    cp /system/etc/wifi/athp2p_supplicant.conf /data/misc/wifi/athp2p_supplicant.conf
    chmod 777 /data/misc/wifi/athp2p_supplicant.conf
fi

ath_supplicant -Dnl80211 -iwlan0 -c/data/misc/wifi/athwpa_supplicant.conf \
                   -N -Dnl80211 -ip2p0 -c/data/misc/wifi/athp2p_supplicant.conf
;;
###################################
RAL5370|MT7601STA|MT7603STA|MT7662STA|MT7668STA)
/vendor/bin/hw/wpa_supplicant -iwlan0 -Dnl80211 -c/data/misc/wifi/wpa_supplicant.conf -O/data/misc/wifi/sockets -N \
    -ip2p0 -Dnl80211 -c/data/misc/wifi/p2p_supplicant.conf -e/data/misc/wifi/entropy.bin -puse_p2p_group_interface=1 \
    -g/data/system/wpa_supplicant/wlan0 -G1010
;;
###################################
BCM43438)
wpa_supplicant -iwlan0 -Dnl80211 -c/data/misc/wifi/wpa_supplicant.conf -O/data/misc/wifi/sockets \
   -e/data/misc/wifi/entropy.bin -puse_p2p_group_interface=1 -g/data/system/wpa_supplicant/wlan0 -G1010
;;
BCM43569)
wpa_supplicant -iwlan0 -Dnl80211 -c/data/misc/wifi/wpa_supplicant.conf -O/data/misc/wifi/sockets \
  -e/data/misc/wifi/entropy.bin -m/data/misc/wifi/p2p_supplicant.conf \
  -puse_p2p_group_interface=1p2p_device=1use_multi_chan_concurrent=1 -g/data/system/wpa_supplicant/wlan0 -G1010
;;
###################################
RTL8712U)
rel_supplicant -iwlan0 -Dnl80211 -c /data/misc/wifi/wpa_supplicant.conf
;;
###################################
ATH9375)
#make sure atheros confs exist before atheros fixed bug use the default wpa_supplicant
if [ ! -f /data/misc/wifi/athwpa_supplicant.conf ]; then
    echo "/data/misc/wifi/athwpa_supplicant.conf does not exist, copy /system/etc/wifi/athwpa_supplicant.conf"
    cp /system/etc/wifi/athwpa_supplicant.conf /data/misc/wifi/athwpa_supplicant.conf
    chmod 777 /data/misc/wifi/athwpa_supplicant.conf
fi

if [ ! -f /data/misc/wifi/athp2p_supplicant.conf ]; then
    echo "/data/misc/wifi/athp2p_supplicant.conf does not exist, copy /system/etc/wifi/athp2p_supplicant.conf"
    cp /system/etc/wifi/athp2p_supplicant.conf /data/misc/wifi/athp2p_supplicant.conf
    chmod 777 /data/misc/wifi/athp2p_supplicant.conf
fi

ath9375_supplicant -Dnl80211 -iwlan0 -c/data/misc/wifi/athwpa_supplicant.conf \
                    -N -Dnl80211 -ip2p0 -c/data/misc/wifi/athp2p_supplicant.conf \
                    -g/data/system/wpa_supplicant/wlan0 -G1010 -O/data/misc/wifi
;;
ATH9374)
#make sure atheros confs exist before atheros fixed bug use the default wpa_supplicant
if [ ! -f /data/misc/wifi/athwpa_supplicant.conf ]; then
    echo "/data/misc/wifi/athwpa_supplicant.conf does not exist, copy /system/etc/wifi/athwpa_supplicant.conf"
    cp /system/etc/wifi/athwpa_supplicant.conf /data/misc/wifi/athwpa_supplicant.conf
    chmod 777 /data/misc/wifi/athwpa_supplicant.conf
fi

if [ ! -f /data/misc/wifi/athp2p_supplicant.conf ]; then
    echo "/data/misc/wifi/athp2p_supplicant.conf does not exist, copy /system/etc/wifi/athp2p_supplicant.conf"
    cp /system/etc/wifi/athp2p_supplicant.conf /data/misc/wifi/athp2p_supplicant.conf
    chmod 777 /data/misc/wifi/athp2p_supplicant.conf
fi

ath9374_supplicant -Dnl80211 -iwlan0 -c/data/misc/wifi/athwpa_supplicant.conf \
                   -N -Dnl80211 -ip2p0 -c/data/misc/wifi/athp2p_supplicant.conf
;;
######################################
*)
echo "error!!!"
;;
esac

