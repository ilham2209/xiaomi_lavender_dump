#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:3adde4acdb79d8e518751ef9436d13b13ba86809; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:7fb2a0f0e975be0b1606ade95559f0d99c3725f5 EMMC:/dev/block/bootdevice/by-name/recovery 3adde4acdb79d8e518751ef9436d13b13ba86809 67108864 7fb2a0f0e975be0b1606ade95559f0d99c3725f5:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
