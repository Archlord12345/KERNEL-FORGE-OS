#!/bin/bash

# Script de construction de l'ISO pour KERNEL FORGE OS

# Assurez-vous d'être dans le répertoire live-build-config
cd /home/ubuntu/kernel_forge_os/live-build-config

# Nettoyer les builds précédents
lb clean --purge

# Exécuter la configuration
../build_config.sh

# Construire l'ISO
lb build

echo "Construction de l'ISO terminée. Le fichier ISO se trouve dans /home/ubuntu/kernel_forge_os/live-build-config/live-image-amd64.hybrid.iso"
