echo -e "\033[32mRunning cargo_tools.sh\033[0m"


# TODO: fix
# eval $(/home/pdrago/.local/bin/mise activate bash)
cargo install eza 
cargo install alacritty 
sudo rm -f /usr/bin/alacritty
sudo ln -s .local/share/mise/installs/rust/latest/bin/alacritty /usr/bin/alacritty
cargo install ripgrep 
cargo install fd-find
