echo -e "\033[32mRunning installs.sh\033[0m"
set -e

MACHINE="-"
KERNEL=$(uname -r)
if lscpu | grep "Model name" | grep -q "i7-8700"; then
    MACHINE="desktop"
fi

sudo pacman -S --needed --noconfirm base-devel git curl unzip vim tree ansible fzf man rsync feh stow xclip zsh ca-certificates meson gnupg wget fontconfig imagemagick make llvm autoconf bison numactl coreutils gettext cmake net-tools wl-clipboard bat tmux tealdeer lsof ncdu lldb valgrind htop clang fuse2 powertop ripgrep eza fd openssh

if [[ "$KERNEL" != *"WSL"* ]]; then
    pacman -Syu --needed --noconfirm alacritty waybar pavucontrol swaync ttf-jetbrains-mono-nerd rofi-wayland arandr networkmanager 
    yay -S google-chrome visual-studio-code-bin 
fi

