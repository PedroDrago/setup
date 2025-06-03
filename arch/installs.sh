echo -e "\033[32mRunning installs.sh\033[0m"
set -e

MACHINE="-"
KERNEL=$(uname -r)
if lscpu | grep "Model name" | grep -q "i7-8700"; then
    MACHINE="desktop"
fi

sudo pacman -Syu --needed --noconfirm base-devel git curl wget unzip vim tree ansible fzf bat tmux man rsync tealdeer feh stow lsof xclip zsh ncdu lldb valgrind htop unzip clang ca-certificates meson gnupg wget fontconfig imagemagick make llvm autoconf bison numactl coreutils gettext cmake net-tools wl-clipboard bat tmux tealdeer lsof ncdu lldb valgrind htop clang arandr docker fuse2 ttf-jetbrains-mono-nerd rofi-wayland powertop hyprpaper hyprlock waybar pavucontrol swaync alacritty ripgrep eza fd

if [[ "$KERNEL" != *"WSL"* ]]; then
    yay -S google-chrome visual-studio-code-bin 
fi

