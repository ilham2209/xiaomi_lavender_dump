#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:e03048a48ed71a53f9c3d9881ebc7972181eb212; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:ad3f1c7355ee56dbf8c1d06b85b9c9fcad1bf153 EMMC:/dev/block/bootdevice/by-name/recovery e03048a48ed71a53f9c3d9881ebc7972181eb212 67108864 ad3f1c7355ee56dbf8c1d06b85b9c9fcad1bf153:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
