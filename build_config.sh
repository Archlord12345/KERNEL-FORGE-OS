#!/bin/bash

# Configuration de live-build pour KERNEL FORGE OS

# Cette commande doit être exécutée à l'intérieur du répertoire live-build-config
lb config \
  --architecture amd64 \
  --distribution bookworm \
  --archive-areas "main contrib non-free non-free-firmware" \
  --parent-archive-areas "main contrib non-free non-free-firmware" \
  --parent-distribution bookworm \
  --debian-installer live \
  --debian-installer-gui true \
  --binary-images iso-hybrid \
  --chroot-filesystem squashfs \
  --bootloader grub \
  --initramfs live-boot \
  --linux-packages "linux-image-amd64" \
  --mirror-bootstrap "http://deb.debian.org/debian/" \
  --mirror-chroot "http://deb.debian.org/debian/" \
  --mirror-binary "http://deb.debian.org/debian/" \
  --apt-options "--yes --allow-downgrades --allow-unauthenticated --allow-remove-essential --allow-change-held-packages -o Dpkg::Options::=--force-confdef -o Dpkg::Options::=--force-confold" \
  --apt-recommends false \
  --apt-secure false \
  --updates true \
  --security true \
  --backports true \
  --bootappend-live "locales=fr_FR.UTF-8 keyboard-layouts=fr timezone=Europe/Paris hostname=kernel-forge username=kernel fullname='KERNEL FORGE User' password=kernel" \
  --verbose

echo "Configuration live-build terminée."
