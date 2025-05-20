echo -e "\033[32mRunning dotfiles.sh\033[0m"

git clone --recurse-submodules git@github.com:PedroDrago/.dotfiles.git $HOME/.dotfiles
cd $HOME/.dotfiles
git checkout arch #TODO: mudar.
./install
