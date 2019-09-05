#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:5e4636cdd4c7467fc47f425b9084976e5b12936b; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:b2b52fdb78f29224620bfee0835f579da46d2f8a EMMC:/dev/block/bootdevice/by-name/recovery 5e4636cdd4c7467fc47f425b9084976e5b12936b 67108864 b2b52fdb78f29224620bfee0835f579da46d2f8a:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
