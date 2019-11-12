#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:f5a2a0403edb6bab2d4a3eb521c7154b600268a9; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:a5b98bb36a2f666a11b992435c6066453ab381ad EMMC:/dev/block/bootdevice/by-name/recovery f5a2a0403edb6bab2d4a3eb521c7154b600268a9 67108864 a5b98bb36a2f666a11b992435c6066453ab381ad:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
