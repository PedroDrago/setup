echo "\033[32mRunning asdf.sh\033[0m"
source $HOME/.zshrc
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.0
asdf update
