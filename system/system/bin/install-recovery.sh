#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:496985b5f887d60b73c98bf30fd0b797a6d1d5f3; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:211f52b83e9e9f22c4ed1b11ca7e68056acc25f4 EMMC:/dev/block/bootdevice/by-name/recovery 496985b5f887d60b73c98bf30fd0b797a6d1d5f3 67108864 211f52b83e9e9f22c4ed1b11ca7e68056acc25f4:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
