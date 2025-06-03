echo -e "\033[32mRunning alacritty.sh\033[0m"
set -e

eval $(/home/pdrago/.local/bin/mise activate bash)
$HOME/.local/share/mise/installs/rust/latest/bin/cargo install alacritty
sudo rm -f /usr/bin/alacritty
sudo ln -s .local/share/mise/installs/rust/latest/bin/alacritty /usr/bin/alacritty
