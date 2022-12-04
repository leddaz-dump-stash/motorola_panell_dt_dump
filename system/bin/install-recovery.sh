#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/recovery:11270400:74c13d644d122c7bb17d387a26ee2de7d08199d9; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/boot:8829184:b5707a4d317c10bf108aa3154b92b27d7282aa3a EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/recovery 74c13d644d122c7bb17d387a26ee2de7d08199d9 11270400 b5707a4d317c10bf108aa3154b92b27d7282aa3a:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
