#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:67a16fdf427735aac8f5cb60eb8121d52a55e6b4; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:e6aedeef35b6c4d8f2a0ce03505a5d5e0c703b49 EMMC:/dev/block/bootdevice/by-name/recovery 67a16fdf427735aac8f5cb60eb8121d52a55e6b4 67108864 e6aedeef35b6c4d8f2a0ce03505a5d5e0c703b49:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
