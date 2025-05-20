echo -e "\033[32mRunning cargo_tools.sh\033[0m"


# eval $(/home/pdrago/.local/bin/mise activate bash)
cargo install eza # Why this does not work?
cargo install alacritty # Why this does not work?
sudo rm -f /usr/bin/alacritty
sudo ln -s .local/share/mise/installs/rust/latest/bin/alacritty /usr/bin/alacritty
cargo install ripgrep # Why this does not work?
cargo install fd-find # Why this does not work?
