#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:a556a1ea6d5c4fc10ec073eff2589f268521fbd7; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:775b3e4e43846a3c9f26eade5ba80954730f2582 EMMC:/dev/block/bootdevice/by-name/recovery a556a1ea6d5c4fc10ec073eff2589f268521fbd7 67108864 775b3e4e43846a3c9f26eade5ba80954730f2582:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
