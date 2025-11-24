#!/bin/bash

# Arch Linux system setup script
# This script installs packages, configures system, and sets up user environment
# Run with sudo privileges or ensure you have sudo access

set -e  # Exit on any error

# Color codes for better output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Configuration variables
USER_NAME="${SUDO_USER:-$USER}"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# List of official packages to install
PACKAGES="base-devel git unzip zip xarchiver 7zip gvfs gvfs-mtp bitwarden pcmanfm feh evince autotiling alacritty code lxappearance qt5ct obsidian polkit-gnome xdg-user-dirs ttf-jetbrains-mono-nerd ffmpegthumbnailer mpv flameshot materia-gtk-theme pdfslicer gnome-disk-utility zsh valgrind gdb dunst brightnessctl autorandr redshift python-pip alsa-utils pulseaudio pulseaudio-alsa pavucontrol inkscape imagemagick gimp"

# List of AUR packages to install
AUR_PACKAGES="anki-bin pamac-aur-git"

# Function to print status messages
print_status() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Check if running as root or with sudo
check_privileges() {
    if [[ $EUID -eq 0 ]]; then
        print_warning "Running as root. Some user-specific operations might not work correctly."
    elif ! groups | grep -q '\bsudo\b' && ! groups | grep -q '\bwheel\b'; then
        print_error "User doesn't have sudo privileges. Please run with sudo."
        exit 1
    fi
}

# Configure pacman for better performance
configure_pacman() {
    print_status "Configuring pacman for better performance..."
    
    # Enable parallel downloads and color
    sudo sed -i 's/^#Color/Color/' /etc/pacman.conf
    sudo sed -i 's/^#ParallelDownloads = 5/ParallelDownloads = 5/' /etc/pacman.conf
    
    # Add multilib repository if x86_64
    if [[ $(uname -m) == "x86_64" ]]; then
        if ! grep -q "^\[multilib\]" /etc/pacman.conf; then
            print_status "Enabling multilib repository..."
            echo -e "\n[multilib]\nInclude = /etc/pacman.d/mirrorlist" | sudo tee -a /etc/pacman.conf
        fi
    fi
}

# Install official packages
install_official_packages() {
    print_status "Installing official packages..."
    sudo pacman -Syu --needed --quiet --noconfirm $PACKAGES > /dev/null 2>&1
    print_success "Official packages installed"
}

# Install yay AUR helper
install_yay() {
    if command -v yay &> /dev/null; then
        print_success "yay is already installed"
        return 0
    fi

    print_status "Installing yay AUR helper..."
    temp_dir=$(mktemp -d)
    cd "$temp_dir"
    git clone --quiet https://aur.archlinux.org/yay.git > /dev/null 2>&1
    cd yay
    makepkg -si --noconfirm --quiet > /dev/null 2>&1
    cd /
    rm -rf "$temp_dir"
    
    if command -v yay &> /dev/null; then
        print_success "yay installed successfully"
    else
        print_error "yay installation failed"
        return 1
    fi
}

# Install AUR packages
install_aur_packages() {
    print_status "Installing AUR packages..."
    yay -S --needed --noconfirm --quiet $AUR_PACKAGES > /dev/null 2>&1
    print_success "AUR packages installed"
}

# Setup user directories and basic configs
setup_user_environment() {
    print_status "Setting up user environment..."
    
    # Update XDG user directories
    if [ -n "$SUDO_USER" ] && [ "$SUDO_USER" != "root" ]; then
        sudo -u "$SUDO_USER" xdg-user-dirs-update > /dev/null 2>&1
    else
        xdg-user-dirs-update > /dev/null 2>&1
    fi

    # Create common directories
    mkdir -p "$HOME/Downloads" "$HOME/Documents" "$HOME/Projects" "$HOME/.local/bin"
    
    # Add ~/.local/bin to PATH if not already there
    if ! grep -q "\.local/bin" "$HOME/.bashrc" 2>/dev/null && ! grep -q "\.local/bin" "$HOME/.zshrc" 2>/dev/null; then
        echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$HOME/.bashrc"
    fi
}

# Install additional useful tools
install_extra_tools() {
    print_status "Installing additional useful tools..."
 
    # Install network tools
    sudo pacman -S --needed --quiet --noconfirm net-tools bind-tools curl wget > /dev/null 2>&1
}

# Setup default shell (optional)
setup_shell() {
    if [[ $(basename "$SHELL") != "zsh" ]]; then
        print_status "Setting up Zsh as default shell..."
        chsh -s "$(which zsh)" "$USER_NAME"
    fi
}

# Create desktop entries and mime types
setup_desktop() {
    print_status "Setting up desktop environment..."
    
    # Update desktop database
    sudo update-desktop-database > /dev/null 2>&1
    
    # Update mime database
    sudo update-mime-database /usr/share/mime > /dev/null 2>&1
}

# Print summary
print_summary() {
    echo
    print_success "Installation completed successfully!"
    echo
    echo "================================================"
    echo "                 SETUP SUMMARY"
    echo "================================================"
    echo "• Official packages: $(echo $PACKAGES | wc -w)"
    echo "• AUR packages: $(echo $AUR_PACKAGES | wc -w)"
    echo "• User: $USER_NAME"
    echo "• Shell: $(basename "$SHELL")"
    echo
    echo "Next steps:"
    echo "1. Reboot your system"
    echo "2. Configure your window manager/desktop environment"
    echo "3. Set up your development projects"
    echo "4. Customize your dotfiles"
    echo "================================================"
}

# Main execution
main() {
    print_status "Starting Arch Linux system setup..."
    check_privileges
    configure_pacman
    install_official_packages
    install_yay
    install_aur_packages
    setup_user_environment
    install_extra_tools
    setup_desktop
    setup_shell
    print_summary
}

# Run main function
main "$@"