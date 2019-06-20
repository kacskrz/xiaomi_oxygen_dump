#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:15394126:56ee3fae5cc3ac2f3a79d76f3edef307ea688113; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:12387658:3e5ad0c360e7f8326b82b2e1e3202b17bfc955be EMMC:/dev/block/bootdevice/by-name/recovery 56ee3fae5cc3ac2f3a79d76f3edef307ea688113 15394126 3e5ad0c360e7f8326b82b2e1e3202b17bfc955be:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
