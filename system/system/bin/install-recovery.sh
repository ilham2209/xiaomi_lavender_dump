#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:bee52479ccd76780c1394b5b96ccae1b253c8d3e; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:b29c8c07ba039bb880f5098412a767fd128bc5b5 EMMC:/dev/block/bootdevice/by-name/recovery bee52479ccd76780c1394b5b96ccae1b253c8d3e 67108864 b29c8c07ba039bb880f5098412a767fd128bc5b5:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
