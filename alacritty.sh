echo -e "\033[32mRunning alacritty.sh\033[0m"

cargo install alacritty
sudo rm -f /usr/bin/alacritty
sudo ln -s .local/share/mise/installs/rust/latest/bin/alacritty /usr/bin/alacritty
