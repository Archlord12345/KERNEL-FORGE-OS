# KERNEL FORGE OS

![KERNEL FORGE OS Logo](arch-build/airootfs/usr/share/backgrounds/kernel-forge/deepin.png)

## Bienvenue sur KERNEL FORGE OS

**KERNEL FORGE OS** est une distribution Linux personnalisée basée sur **Arch Linux**, conçue pour les développeurs fullstack et les passionnés de performance. Elle combine la puissance d'Arch avec l'élégance de l'environnement **Hyprland** et du **Caelestia Shell**.

## Caractéristiques Principales

*   **Base Arch Linux** : Profitez de la simplicité, de la modernité et de la flexibilité d'Arch Linux.
*   **Hyprland & Caelestia Shell** : Une interface moderne, fluide et hautement personnalisable.
*   **Terminal Zsh Optimisé** : Zsh par défaut avec auto-complétion, coloration syntaxique et un **Fastfetch personnalisé** utilisant `chafa` pour afficher notre logo.
*   **Outils de Développement** :
    *   **Node.js, npm, Bun** pré-installés.
    *   **Git, Neovim** et outils essentiels.
*   **Support Wine & Nvidia** : Prêt pour les applications Windows et optimisé pour le matériel moderne.

## Construction de l'ISO

Le projet utilise `archiso` pour la génération de l'image.

### Prérequis (sur Arch Linux)

```bash
sudo pacman -S archiso
```

### Étapes de Construction

1.  **Cloner le dépôt** :
    ```bash
    git clone https://github.com/Archlord12345/KERNEL-FORGE-OS.git
    cd KERNEL-FORGE-OS
    ```

2.  **Lancer le build** :
    ```bash
    sudo mkarchiso -v -w /tmp/archiso-tmp -o out/ arch-build/
    ```

L'image ISO sera générée dans le dossier `out/`.

## GitHub Actions

Le workflow `.github/workflows/build-iso.yml` automatise la construction de l'ISO à chaque push sur `main`.

--- 

**KERNEL FORGE Team**
*Built from the kernel. Forged for performance.*
