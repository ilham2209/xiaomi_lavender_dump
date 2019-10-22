#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:27da5ad86e7fba09222f12d66650b7f2c81f212e; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:2caf748a59ff65dd3cb5cb994d9756ded879e55c EMMC:/dev/block/bootdevice/by-name/recovery 27da5ad86e7fba09222f12d66650b7f2c81f212e 67108864 2caf748a59ff65dd3cb5cb994d9756ded879e55c:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
