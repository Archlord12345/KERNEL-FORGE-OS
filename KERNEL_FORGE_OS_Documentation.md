# Documentation KERNEL FORGE OS

**Auteurs :** KERNEL FORGE Team

## Introduction

Ce document détaille la création de **KERNEL FORGE OS**, une distribution Linux personnalisée basée sur Debian. L'objectif est de fournir un environnement optimisé pour les développeurs et les utilisateurs avancés, intégrant des outils natifs comme Wine et Winetricks pré-configurés, ainsi qu'un ensemble complet d'outils de développement modernes tels que Node.js, npm, pnpm, Bun, VS Code et Antigravity IDE & CLI. L'interface graphique est également personnalisée pour offrir une expérience utilisateur unique et cohérente avec l'identité de KERNEL FORGE, incluant un terminal Zsh personnalisé et l'intégration du logo dans Neofetch.

## 1. Identité Visuelle KERNEL FORGE

L'identité visuelle de KERNEL FORGE OS est conçue pour refléter un environnement technologique avancé et robuste. Les éléments clés incluent un fond d'écran et un logo distinctifs.

### 1.1 Logo

Le nouveau logo de KERNEL FORGE OS est un robot stylisé avec une spirale Debian, représentant l'innovation et la puissance. Ce logo sera intégré à travers le système, y compris dans Neofetch.

![Logo KERNEL FORGE](/home/ubuntu/upload/deepin.png)

### 1.2 Fond d'écran

Le fond d'écran représente un environnement de laboratoire futuriste avec une spirale Debian holographique et des cubes flottants, dans des tons de bleu et blanc, assorti au nouveau logo.

![Fond d'écran KERNEL FORGE OS](/home/ubuntu/kernel_forge_wallpaper_v2.png)

## 2. Base du Système : Debian Live-Build

La distribution est construite à l'aide de `live-build`, l'outil officiel de Debian pour créer des images Live. Ce processus permet une personnalisation profonde du système de fichiers racine, des paquets installés et des configurations initiales.

### 2.1 Structure du Projet `live-build`

Le répertoire `live-build-config` contient la configuration nécessaire pour la construction de l'ISO :

- `config/package-lists/` : Contient les listes de paquets à installer.
- `config/hooks/` : Scripts exécutés à différentes étapes du processus de construction.
- `config/includes.chroot/` : Fichiers et répertoires copiés directement dans le système de fichiers racine de l'image Live.
- `config/archives/` : Fichiers de configuration des dépôts APT supplémentaires.

### 2.2 Paquets Essentiels et Environnement de Bureau

La distribution utilise **KDE Plasma** comme environnement de bureau, choisi pour sa richesse fonctionnelle et ses capacités de personnalisation. La liste des paquets essentiels inclut :

- `kde-plasma-desktop`, `lightdm` (environnement de bureau et gestionnaire d'affichage)
- `zsh`, `neofetch`, `git` (shell et outils de terminal)
- `xorg` (serveur graphique)
- `network-manager`, `network-manager-gnome` (gestion réseau)
- `firefox-esr` (navigateur web)
- `gnome-terminal`, `gedit` (outils de base)
- `sudo`, `locales`, `console-setup`, `keyboard-configuration` (utilitaires système)
- `fonts-dejavu`, `fonts-noto`, `fonts-freefont-ttf` (polices de caractères)
- `apt-transport-https`, `cabextract`, `p7zip-full` (dépendances pour les dépôts et Wine)

## 3. Outils de Développement Intégrés

KERNEL FORGE OS est pré-équipé avec un ensemble d'outils de développement clés :

### 3.1 Node.js, npm, pnpm, Bun

- **Node.js** et **npm** sont installés via le dépôt officiel NodeSource pour garantir les dernières versions stables.
- **pnpm** est installé globalement via npm, offrant une gestion des dépendances efficace et économe en espace disque.
- **Bun**, un runtime JavaScript rapide, est installé via son script d'installation officiel.

### 3.2 VS Code

Visual Studio Code est inclus, avec son dépôt officiel Microsoft ajouté pour des mises à jour régulières.

### 3.3 Antigravity IDE & CLI

Antigravity IDE et son interface en ligne de commande (CLI) sont intégrés. Ces outils de Google sont conçus pour le développement basé sur les agents IA et sont installés via leur dépôt Debian dédié.

## 4. Wine et Winetricks Optimisés

Wine et Winetricks sont pré-configurés pour offrir une compatibilité maximale avec les applications Windows, avec un accent sur les performances.

- **Version de Wine** : `wine-stable` est utilisé pour sa fiabilité.
- **Optimisations** :
  - Installation des dépendances `p7zip-full` et `cabextract`.
  - Configuration d'un `WINEPREFIX` par défaut dans `/etc/skel/.wine`, assurant que chaque nouvel utilisateur dispose d'un environnement Wine pré-initialisé.
  - Installation de bibliothèques Windows courantes via `winetricks` : `corefonts`, `vcrun2019`, `d3dcompiler_47`.
  - Intégration de **DXVK** et **VKD3D** pour améliorer les performances graphiques des applications et jeux Windows en traduisant DirectX en Vulkan.
  - Des ajustements de registre Wine sont appliqués pour optimiser le rendu Direct3D via OpenGL.

## 5. Configuration de l'Interface Graphique KDE Plasma et du Terminal Zsh

L'environnement KDE Plasma est personnalisé pour s'aligner avec l'esthétique KERNEL FORGE, et le terminal Zsh est configuré pour une expérience utilisateur améliorée.

- **Fond d'écran** : Le nouveau fond d'écran KERNEL FORGE est défini par défaut.
- **Thème KDE** : Un thème sombre avec des accents bleus est configuré par défaut (basé sur Breeze Dark).
- **Terminal Zsh** : Zsh est défini comme shell par défaut. **Oh My Zsh** est installé avec le thème `agnoster` et des plugins comme `zsh-autosuggestions` et `zsh-syntax-highlighting`.
- **Neofetch** : Le logo robotique de KERNEL FORGE est affiché en ASCII art au démarrage du terminal via Neofetch, avec des couleurs assorties au logo.
- **Branding Système** : Les fichiers `/etc/os-release` et `/etc/issue` sont personnalisés pour afficher les informations de KERNEL FORGE OS, y compris le nom de l'équipe créatrice : **KERNEL FORGE Team**.

## 6. Processus de Construction ISO

La construction de l'image ISO est gérée par deux scripts principaux :

### 6.1 `build_config.sh`

Ce script configure `live-build` avec les paramètres suivants :

- **Architecture** : `amd64`.
- **Distribution** : `bookworm` (Debian 12).
- **Zones d'archives** : `main contrib non-free non-free-firmware`.
- **Images binaires** : `iso-hybrid` (amorçable depuis USB ou DVD).
- **Système de fichiers chroot** : `squashfs`.
- **Chargeur de démarrage** : `grub`.
- **Environnement de bureau** : `kde-desktop`.
- **Localisation** : `fr_FR.UTF-8`, `keyboard-layouts=fr`, `timezone=Europe/Paris`.
- **Utilisateur par défaut** : `username=kernel`, `fullname='KERNEL FORGE User'`, `password=kernel`.

Le script copie également les listes de paquets, les hooks et les configurations de dépôts dans le répertoire de travail de `live-build`.

### 6.2 `build_iso.sh`

Ce script orchestre le processus de construction :

1. Navigue vers le répertoire `live-build-config`.
2. Nettoie les builds précédents avec `lb clean --purge`.
3. Exécute `build_config.sh` pour configurer `live-build`.
4. Lance la construction de l'image ISO avec `lb build`.

L'image ISO finale sera nommée `live-image-amd64.hybrid.iso` et se trouvera dans le répertoire `live-build-config`.

## Conclusion

KERNEL FORGE OS est une distribution Linux Debian conçue pour offrir un environnement de développement puissant et une expérience utilisateur personnalisée. Grâce à l'intégration de Wine optimisé, d'outils de développement modernes, d'un terminal Zsh amélioré, de Neofetch avec le logo, et d'une interface graphique KDE Plasma soignée, elle vise à être une plateforme robuste et conviviale pour la communauté des développeurs et des passionnés de Linux.
