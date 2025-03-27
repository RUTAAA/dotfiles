#!/sbin/bash

# To change wallpaper use the following command:
# matugen image path/to/wallpaper

hyprctl hyprpaper preload $1
hyprctl hyprpaper wallpaper ",$1"

wallpaper_path=$(realpath --relative-to=$HOME $1)

sed -i "s|^preload =.*|preload = $HOME/$wallpaper_path|" ~/.config/hypr/hyprpaper.conf
sed -i "s|^    path =.*|    path = $HOME/$wallpaper_path|" ~/.config/hypr/hyprlock.conf

pkill waybar
hyprctl dispatch exec waybar
