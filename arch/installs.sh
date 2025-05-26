echo -e "\033[32mRunning installs.sh\033[0m"

MACHINE="-"
KERNEL=$(uname -r)
if lscpu | grep "Model name" | grep -q "i7-8700"; then
    MACHINE="desktop"
fi

sudo pacman -Syu --needed --noconfirm base-devel git curl wget unzip vi vim tree ansible fzf bat tmux man rsync feh stow zsh htop ca-certificates meson gnupg fontconfig imagemagick make llvm autoconf bison numactl coreutils gettext cmake net-tools tealdeer lsof ncdu lldb valgrind clang fuse2 pavucontrol powertop arandr ttf-jetbrains-mono-nerd thunar rofi

if [[ "$KERNEL" != *"WSL"* ]]; then
    yay -S google-chrome visual-studio-code-bin 
fi

