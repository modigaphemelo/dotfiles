#!/bin/bash

# Arch Linux package installer script
# This script installs the specified packages using pacman.
# Run with sudo privileges or ensure you have sudo access.

# List of packages to install
PACKAGES="base-devel git unzip zip ark 7zip ranger feh evince autotiling kitty code lxappearance libreoffice-still obsidian neovim polkit-gnome xdg-user-dirs ttf-liberation gst-plugins-base gst-plugins-good gst-plugins-bad gst-plugins-ugly gstreamer-vaapi x265 x264 lame ffmpegthumbs mpv audacious audacious-plugins flameshot"

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
