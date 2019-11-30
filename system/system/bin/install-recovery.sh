#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:f3cc945c8b2229fa2ed26c0ee8c8238d700553cf; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:4c20c31b76a68f775b20cbe681add42574569568 EMMC:/dev/block/bootdevice/by-name/recovery f3cc945c8b2229fa2ed26c0ee8c8238d700553cf 67108864 4c20c31b76a68f775b20cbe681add42574569568:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
