#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:15394126:9ce78d41e177508033c39d2106d58e0e991927b3; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:12387658:197de3b581ef27154b3216e44f7820716961ebc6 EMMC:/dev/block/bootdevice/by-name/recovery 9ce78d41e177508033c39d2106d58e0e991927b3 15394126 197de3b581ef27154b3216e44f7820716961ebc6:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
