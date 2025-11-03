# ArtificialXDev's Portfolio

Welcome to the source code repository for my personal portfolio website. This site showcases my projects, skills, and provides a bit of information about me. It's built with modern web technologies to be fast, responsive, and visually engaging.

This repository also includes a utility script for setting up a customized Arch Linux environment with Hyprland.

## Table of Contents

1.  [Portfolio Website](#portfolio-website)
    -   [Features](#features)
    -   [Tech Stack](#tech-stack)
    -   [Getting Started](#getting-started)
    -   [Deployment](#deployment)
2.  [Arch Linux Post-Install Script](#arch-linux-post-install-script)
    -   [Overview](#overview)
    -   [Features](#features-1)
    -   [Requirements](#requirements)
    -   [Usage](#usage)
    -   [Script Workflow](#script-workflow)

---

## Portfolio Website

### Features

*   **Project Showcase**: A dedicated section to display my work with descriptions and links.
*   **Responsive Design**: Fully responsive layout that looks great on desktops, tablets, and mobile devices.
*   **Animations**: Smooth and engaging animations using Lottie for a better user experience.
*   **Contact Information**: Easy ways for visitors to get in touch with me.

### Tech Stack

While not exhaustive, the project leverages a modern web development stack:

*   **Frontend Framework**: (e.g., Next.js, SvelteKit, or another modern JS framework)
*   **Animations**: [Lottie-web](https://github.com/airbnb/lottie-web) for high-quality, lightweight animations.
*   **Deployment**: Hosted on [Vercel](https://vercel.com/) for optimal performance and continuous deployment.
*   **Styling**: (e.g., Tailwind CSS, CSS Modules)

### Getting Started

To run this project locally, follow these steps:

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/ArtifiicalXDev/portfoliov2.git
    cd portfoliov2
    ```

2.  **Install dependencies:**
    ```bash
    bun install
    ```

3.  **Run the development server:**
    ```bash
    bun dev
    ```

    Open [http://localhost:3000](http://localhost:3000) (or the port indicated in the console) in your browser to see the result.

### Deployment

This site is deployed on Vercel. Any push to the `main` branch will automatically trigger a new deployment.

---

## Arch Linux Post-Install Script

### Overview

`arch-postinstall.fish` is an automated post-installation setup utility for Arch Linux and Arch-based systems, written in Fish shell. It simplifies the manual configuration process after a fresh Arch installation by performing dependency checks, installing missing packages, and deploying a complete Hyprland desktop environment.

This script is ideal for users who:
*   Frequently reinstall Arch Linux.
*   Prefer automated configuration over manual setup.
*   Use Hyprland as their main window manager.

### Features

*   **Dependency Validation**: Checks for required packages like `git` and the `base-devel` group.
*   **Automatic Installation**: Installs any missing dependencies automatically using `pacman`.
*   **Hyprland Rice Deployment**: Clones and runs the installation script for the beautiful Caelestia Hyprland rice.
*   **Non-Interactive**: Uses `--noconfirm` for a seamless, unattended setup process.
*   **User-Friendly Output**: Provides clear, color-coded terminal output to track progress.

### Requirements

*   An Arch Linux or Arch-based derivative.
*   The `fish` shell installed.
*   A user with `sudo` privileges.
*   An active internet connection.

### Usage

*  **Download & run the script:**
    ```bash
    curl -sSL https://artificialx.dev/scripts/arch-postinstall.fish | fish
    ```


    The script will prompt for your `sudo` password to install packages.

### Script Workflow

1.  **Welcome Message**: Greets the user and introduces the setup wizard.
2.  **Dependency Check**: Verifies if `git` and `base-devel` are installed. A spinner indicates that the check is in progress.
3.  **Install Missing Packages**: If any required packages are missing, it uses `sudo pacman` to install them.
4.  **Clone Caelestia Rice**: Clones the Caelestia dotfiles repository into `~/.local/share/caelestia`.
5.  **Run Installer**: Executes the Caelestia installation script (`install.fish`) with `sudo` to set up the Hyprland environment.
6.  **Completion**: Displays a success message and provides a link to the support Discord.

To contribute to the script make PR with the suffix `[SCRIPT]`.
For any queries, contact me on Discord: `artificialxdev_`