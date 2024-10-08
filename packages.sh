echo -e "\033[32mRunning packages.sh\033[0m"
source $HOME/.zshrc

# Rust
cargo install eza
cargo install alacritty
sudo rm -f /usr/bin/alacritty
sudo ln -s .local/share/mise/installs/rust/latest/bin/alacritty /usr/bin/alacritty

# # Go
# go install -tags 'postgres' github.com/golang-migrate/migrate/v4/cmd/migrate@latest
# go install github.com/air-verse/air@latest

# Python
# pip install --upgrade pip
# pip install pipx
# pipx install uv --user
