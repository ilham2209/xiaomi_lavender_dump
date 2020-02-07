#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:d5a37238bbf9ff8ee2f2cd58c52320a5dbf30e10; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:07317c37536d07af49b1f23a49637c505d1a9ddc EMMC:/dev/block/bootdevice/by-name/recovery d5a37238bbf9ff8ee2f2cd58c52320a5dbf30e10 67108864 07317c37536d07af49b1f23a49637c505d1a9ddc:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
