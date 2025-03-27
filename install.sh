# /!\ UNDER CONSTRUCTION /!\

# yay install
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si


# System update and packages installation
yay -Syu hyprland waybar hyprpaper matugen-bin dunst hyprlock hypridle xdg-desktop-portal-hyprland hyprpolkitagent hyprland-qt-support pavucontrol wpctl brightnessctl ttf-nerd-fonts-symbols rofi-wayland alacritty zen-browser-bin starship


systemctl enable ly
