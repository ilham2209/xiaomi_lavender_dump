#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:f176cb584731a38137c812f6d50135a61e69b58b; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:98113d91da56ea2e988cc6fd52316e8a830916e0 EMMC:/dev/block/bootdevice/by-name/recovery f176cb584731a38137c812f6d50135a61e69b58b 67108864 98113d91da56ea2e988cc6fd52316e8a830916e0:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
