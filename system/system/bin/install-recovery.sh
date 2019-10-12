#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:e8f63be5eb522bbd27d45c3863119161898bad1f; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:9cf05c92f5fc1d40cc1c6501c8f8731ec60c634d EMMC:/dev/block/bootdevice/by-name/recovery e8f63be5eb522bbd27d45c3863119161898bad1f 67108864 9cf05c92f5fc1d40cc1c6501c8f8731ec60c634d:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
