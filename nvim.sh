echo "\033[32mRunning nvim.sh\033[0m"
git clone https://github.com/neovim/neovim.git $HOME/neovim
cd $HOME/neovim
git checkout release-0.10
make CMAKE_BUILD_TYPE=Release
sudo make install
rm -rf $HOME/neovim
