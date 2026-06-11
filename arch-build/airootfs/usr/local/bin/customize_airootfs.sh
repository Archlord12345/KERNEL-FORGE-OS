#!/bin/bash
set -e -u

# Kernel Forge OS Branding
echo "KERNEL FORGE OS" > /etc/hostname
echo "KERNEL FORGE OS - By NGHOMSI FEUKOUO RAVEL (https://github.com/Archlord12345)" > /etc/issue

# Install YAY for AUR support
useradd -m -G wheel -s /bin/zsh forge
echo "forge ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

# Install Caelestia and Themes
# This runs inside the chroot during build
su - forge -c "git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si --noconfirm"
su - forge -c "yay -S --noconfirm caelestia-shell-git"

# Set Branding in OS Release
sed -i 's/NAME="Arch Linux"/NAME="KERNEL FORGE OS"/' /etc/os-release
sed -i 's/PRETTY_NAME="Arch Linux"/PRETTY_NAME="KERNEL FORGE OS - Performance Fullstack Dev Edition"/' /etc/os-release
echo "BUG_REPORT_URL=\"https://github.com/Archlord12345/KERNEL-FORGE-OS/issues\"" >> /etc/os-release
echo "HOME_URL=\"https://github.com/Archlord12345\"" >> /etc/os-release

# Cleanup
rm -rf /home/forge/yay
