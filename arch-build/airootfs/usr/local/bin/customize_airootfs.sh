#!/bin/bash
set -e -u

# Kernel Forge OS Branding
echo "kernel-forge-os" > /etc/hostname
echo "KERNEL FORGE OS - By NGHOMSI FEUKOUO RAVEL (https://github.com/Archlord12345)" > /etc/issue

# User Configuration
if ! id "forge" &>/dev/null; then
    useradd -m -G wheel -s /bin/zsh forge
    echo "forge:kernel" | chpasswd
fi

# Sudoers Configuration
echo "forge ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/forge
chmod 440 /etc/sudoers.d/forge

# Branding in OS Release
sed -i 's/NAME="Arch Linux"/NAME="KERNEL FORGE OS"/' /etc/os-release
sed -i 's/PRETTY_NAME="Arch Linux"/PRETTY_NAME="KERNEL FORGE OS - Performance Fullstack Dev Edition"/' /etc/os-release
{
    echo "BUG_REPORT_URL=\"https://github.com/Archlord12345/KERNEL-FORGE-OS/issues\""
    echo "HOME_URL=\"https://github.com/Archlord12345\""
    echo "LOGO=\"kernel-forge-os\""
} >> /etc/os-release

# Enable Services
systemctl enable NetworkManager
systemctl enable bluetooth

# Wine Optimization Pre-configuration
# Set default WINEPREFIX for the forge user
su - forge -c "mkdir -p /home/forge/.wine"
# Note: Full winetricks execution is better done at first boot by the user
# but we can pre-set some environment variables.

# Set permissions for branding assets
chmod -R 644 /usr/share/backgrounds/kernel-forge/*
chmod 644 /etc/kernel-forge/neofetch_logo.ascii

# Ensure forge user owns their home
chown -R forge:forge /home/forge
