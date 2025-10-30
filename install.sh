#!/bin/bash

# Arch Linux package installer script
# This script installs the specified packages using pacman.
# Run with sudo privileges or ensure you have sudo access.

# List of packages to install
PACKAGES="base-devel git unzip zip xarchiver 7zip gvfs gvfs-mtp picom pcmanfm feh evince autotiling alacritty code lxappearance qt5ct obsidian polkit-gnome xdg-user-dirs ttf-jetbrains-mono-nerd x265 x264 lame ffmpegthumbnailer mpv audacious audacious-plugins flameshot materia-gtk-theme pdfslicer gnome-disk-utility zsh"

echo "Starting installation of packages on Arch Linux..."
echo "Packages to install: $PACKAGES"
echo ""

# Update package database
sudo pacman -Sy --noconfirm

# Install packages
sudo pacman -S --needed $PACKAGES

if [ $? -eq 0 ]; then
    echo ""
    echo "Installation completed successfully!"
    
    # Update XDG user directories (run as the original user)
    echo "Updating XDG user directories..."
    if [ -n "$SUDO_USER" ] && [ "$SUDO_USER" != "root" ]; then
        sudo -u "$SUDO_USER" xdg-user-dirs-update
    else
        xdg-user-dirs-update
    fi
    echo "XDG user directories updated."
else
    echo ""
    echo "Installation encountered errors. Please check the output above."
fi
