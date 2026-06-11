iso_name="kernel-forge-os"
iso_label="KERNEL_FORGE_OS"
iso_publisher="Kernel Forge"
iso_version=$(date +%Y.%m.%d)
install_dir="arch"
buildmodes=('iso')
bootmodes=('bios.syslinux' 'uefi.systemd-boot')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '100%')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/usr/local/bin/customize_airootfs.sh"]="0:0:755"
)
