echo -e "\033[32mRunning langs.sh\033[0m"
source $HOME/.zshrc

# Rust
mise use --global rust
# Go
mise use --global go
# Python
mise use --global python
pip install --upgrade pip
# Node
mise use --global node
