echo -e "\033[32mRunning hyprland.sh\033[0m"
set -e

# TODO: need to make this ready to use without archinstall, i.e., objective is to archinstall always with minimal profile
sudo pacman -S --needed --noconfirm wl-clipboard rofi-wayland hyprpaper hyprlock waybar swaync xdg-desktop-portal-hyprland
# qt5-wayland qt6-wayland
yay -S hyprshot rose-pine-hyprcursor
