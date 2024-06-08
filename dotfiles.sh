echo "\033[32mRunning dotfiles.sh\033[0m"
git clone --recurse-submodules https://github.com/PedroDrago/.dotfiles.git $HOME/.dotfiles
cd $HOME/.dotfiles
./install
