iso_name="kernel-forge-os"
iso_label="KERNEL_FORGE_OS"
iso_publisher="NGHOMSI FEUKOUO RAVEL"
iso_application="KERNEL FORGE OS - FULLSTACK DEVELOPPER Edition"
iso_version="1.0.0"
install_dir="arch"
bootmodes=('bios.syslinux' 'uefi.systemd-boot')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1048576')
file_permissions=(
  ["/etc/shadow"]="0:0:0400"
  ["/root"]="0:0:0700"
  ["/usr/local/bin/customize_airootfs.sh"]="0:0:0755"
)
