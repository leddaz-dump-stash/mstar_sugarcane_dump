#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/mstar_mci.0/by-name/recovery:20240384:0f9cfd9ff754690468986a72394440deddb5c741; then
  applypatch /system/etc/recovery.img EMMC:/dev/block/platform/mstar_mci.0/by-name/recovery 0f9cfd9ff754690468986a72394440deddb5c741 20240384 && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
