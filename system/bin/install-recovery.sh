#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/mstar_mci.0/by-name/recovery:20365312:98a0746a24e6b6be303db902e2428645b1604574; then
  applypatch /system/etc/recovery.img EMMC:/dev/block/platform/mstar_mci.0/by-name/recovery 98a0746a24e6b6be303db902e2428645b1604574 20365312 && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
