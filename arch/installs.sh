echo -e "\033[32mRunning installs.sh\033[0m"

sudo pacman -Syu --needed --noconfirm base-devel git curl wget unzip vi vim tree ansible fzf bat tmux man rsync feh stow zsh htop ca-certificates meson gnupg fontconfig imagemagick make llvm autoconf bison numactl coreutils gettext cmake net-tools tealdeer lsof ncdu lldb valgrind clang fuse2 pavucontrol powertop arandr ttf-jetbrains-mono-nerd thunar rofi

yay -S google-chrome visual-studio-code-bin 
