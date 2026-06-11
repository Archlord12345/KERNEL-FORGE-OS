# KERNEL FORGE OS

![KERNEL FORGE OS Logo](deepin.png)

## Bienvenue sur KERNEL FORGE OS

**KERNEL FORGE OS** est une distribution Linux personnalisée basée sur Debian, conçue par le groupe **KERNEL FORGE**. Notre objectif est de fournir un environnement de développement puissant et une expérience utilisateur hautement personnalisée, combinant la stabilité de Debian avec des outils modernes et une interface graphique soignée.

## Caractéristiques Principales

*   **Base Debian Stable** : Profitez de la fiabilité et de la vaste logithèque de Debian.
*   **Environnement de Bureau KDE Plasma Personnalisé** : Une interface moderne, élégante et entièrement configurée aux couleurs de KERNEL FORGE (bleu et blanc), avec un fond d'écran futuriste.
*   **Terminal Zsh Optimisé** : Zsh est le shell par défaut, enrichi par Oh My Zsh, des plugins d'auto-complétion et de coloration syntaxique, et un affichage Neofetch personnalisé avec notre logo ASCII.
*   **Outils de Développement Essentiels** :
    *   **Node.js, npm, pnpm, Bun** : Un écosystème JavaScript complet et performant.
    *   **Visual Studio Code** : L'éditeur de code préféré des développeurs, pré-installé.
    *   **Antigravity IDE & CLI** : Les outils de développement d'agents IA de Google, intégrés pour l'innovation.
*   **Wine & Winetricks Optimisés** : Exécutez vos applications et jeux Windows préférés avec des performances améliorées grâce à DXVK et VKD3D.
*   **Identité Visuelle Unique** : Un logo robotique distinctif et un fond d'écran futuriste pour une expérience cohérente.

## Philosophie du Projet

KERNEL FORGE OS est né de la volonté de créer un système d'exploitation qui non seulement fonctionne, mais inspire. Nous croyons en un environnement où la puissance des outils open-source rencontre une esthétique moderne et une facilité d'utilisation, permettant aux développeurs et aux utilisateurs avancés de se concentrer sur la création et l'innovation.

## Construire Votre Propre ISO

Le projet est entièrement open-source et utilise `live-build` pour la génération de l'image ISO. Vous pouvez reproduire notre build ou le personnaliser selon vos besoins.

### Prérequis

Pour construire l'ISO, vous aurez besoin d'un système basé sur Debian avec `live-build` et `git` installés.

```bash
sudo apt update
sudo apt install -y live-build curl git p7zip-full cabextract
```

### Étapes de Construction

1.  **Cloner le dépôt** :
    ```bash
    git clone https://github.com/Archlord12345/KERNEL-FORGE-OS.git
    cd KERNEL-FORGE-OS
    ```

2.  **Exécuter les scripts de build** :
    ```bash
    chmod +x build_config.sh build_iso.sh
    ./build_config.sh
    ./build_iso.sh
    ```

L'image ISO finale (`live-image-amd64.hybrid.iso`) sera générée dans le répertoire `live-build-config`.

## GitHub Actions pour le Build Automatique

Ce dépôt inclut un workflow GitHub Actions (`.github/workflows/build-iso.yml`) qui automatise la construction de l'ISO à chaque push sur la branche `main` ou via un déclenchement manuel. Les artefacts ISO sont disponibles dans l'onglet "Actions" de votre dépôt GitHub.

## Documentation Complète

Pour une exploration détaillée de la configuration du système, des hooks de `live-build`, des optimisations Wine et de la personnalisation de KDE/Zsh, veuillez consulter le fichier `KERNEL_FORGE_OS_Documentation.md` inclus dans ce dépôt.

## Contribution

Nous accueillons les contributions ! Si vous souhaitez améliorer KERNEL FORGE OS, n'hésitez pas à soumettre des issues ou des pull requests.

## Licence

Ce projet est sous licence [MIT](LICENSE). (Note: Le fichier LICENSE n'est pas inclus dans ce dépôt, mais une licence MIT est suggérée.)

--- 

**KERNEL FORGE Team**
*Built from the kernel. Forged for performance.*
