#!/bin/bash

# Script de construction de l'ISO pour KERNEL FORGE OS

set -e

# Obtenir le chemin absolu du répertoire racine du projet
PROJECT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Aller dans le répertoire live-build-config
cd "${PROJECT_ROOT}/live-build-config"

# Nettoyer les builds précédents
sudo lb clean --purge

# Exécuter la configuration (on appelle build_config.sh qui est à la racine)
if [ -f "${PROJECT_ROOT}/build_config.sh" ]; then
    sudo "${PROJECT_ROOT}/build_config.sh"
else
    echo "Erreur : ${PROJECT_ROOT}/build_config.sh non trouvé."
    exit 1
fi

# Construire l'ISO
sudo lb build

echo "Construction de l'ISO terminée. Le fichier ISO se trouve dans le répertoire live-build-config."
