#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:035db7e74e98d27bc379ddce37f8481e5958beff; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:e4636fe6c8f890d0f7a0505201e0d0734049737d EMMC:/dev/block/bootdevice/by-name/recovery 035db7e74e98d27bc379ddce37f8481e5958beff 67108864 e4636fe6c8f890d0f7a0505201e0d0734049737d:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
