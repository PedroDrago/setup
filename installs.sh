echo -e "\033[32mRunning installs.sh\033[0m"

# debian
sudo apt install ansible curl software-properties-common build-essential curl ca-certificates gnupg wget libpq-dev libssl-dev fontconfig imagemagick libmagickwand-dev ncurses-term exuberant-ctags make zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev llvm libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev libffi-dev liblzma-dev autoconf bison rustc libyaml-dev libyaml-dev libreadline6-dev libgmp-dev libncurses5-dev libgdbm6 libgdbm-dev libdb-dev uuid-dev libcurl4-openssl-dev icu-devtools libicu-dev numactl libfuse2 git curl wget coreutils vim tree fzf bat tmux arandr flameshot ripgrep fd-find feh stow lsof i3 i3lock xautolock xclip ninja-build gettext cmake zsh pulseaudio ncdu lldb valgrind htop brightnessctl -y

# for ubuntu must install ubuntu-restricted-extras for ubuntu
