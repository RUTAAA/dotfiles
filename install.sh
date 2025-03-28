#!/bin/sh

# yay install
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si


# Packages installation
yay -Sy alacritty brightnessctl dunst hypridle hyprland hyprland-qt-support hyprlock hyprpaper hyprpolkitagent matugen-bin pipewire pipewire rofi-wayland starship ttf-firacode-nerd ttf-fira-sans ttf-nerd-fonts-symbols waybar wireplumber xdg-desktop-portal-hyprland zen-browser-bin zsh zsh-completions zsh-syntax-highlighting zsh-autosuggestions zsh-history-substring-search

# Units enabling
systemctl enable ly
systemctl enable NetworkManager

# Copying configuration files
cp ./rice/zshrc $HOME/.zshrc
cp ./rice/config/* $HOME/.config/
