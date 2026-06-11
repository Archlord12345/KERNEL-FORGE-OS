# Documentation KERNEL FORGE OS (Arch Edition)

## Introduction

KERNEL FORGE OS est une distribution basée sur Arch Linux optimisée pour le développement. Cette documentation détaille la configuration du système et de l'environnement graphique.

## 1. Identité Visuelle

### 1.1 Logo et Fond d'écran
Les assets sont situés dans `/usr/share/backgrounds/kernel-forge/` :
- `deepin.png` : Logo officiel.
- `kernel_forge_wallpaper_v2.png` : Fond d'écran par défaut.

### 1.2 Terminal
Le terminal utilise **Zsh** avec :
- Coloration syntaxique (`zsh-syntax-highlighting`).
- Auto-suggestions (`zsh-autosuggestions`).
- **Fastfetch** : Configuré pour afficher `deepin.png` avec `chafa`.

## 2. Environnement de Bureau

### 2.1 Hyprland
Gestionnaire de fenêtres par défaut. Configuration dans `~/.config/hypr/hyprland.conf`.

### 2.2 Caelestia Shell
Utilisé comme barre de statut et interface système. Configuration dans `~/.config/caelestia/shell.json`.

## 3. Configuration Archiso

Le profil se trouve dans `arch-build/` :
- `packages.x86_64` : Liste des paquets installés.
- `pacman.conf` : Configuration des dépôts (Core, Extra, Community, Multilib).
- `airootfs/` : Fichiers copiés dans le système live.
- `profiledef.sh` : Définition du profil ISO.

## 4. Personnalisation Post-Install

Le script `usr/local/bin/customize_airootfs.sh` gère :
- Création de l'utilisateur `forge` (mdp: `kernel`).
- Configuration de `sudo`.
- Activation des services (`NetworkManager`, `bluetooth`).
- Branding du système (`/etc/os-release`).
