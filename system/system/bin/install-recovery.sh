#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:883c8b921dd75e362959b9d0b7895af19e2c5e94; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:a411a308f219e88379b6d5431ef9dfebe8c605c2 EMMC:/dev/block/bootdevice/by-name/recovery 883c8b921dd75e362959b9d0b7895af19e2c5e94 67108864 a411a308f219e88379b6d5431ef9dfebe8c605c2:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
