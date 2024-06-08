VERSION=release-0.10
git clone https://github.com/neovim/neovim.git $HOME/neovim
cd $HOME/neovim
git checkout -b $VERSION
make CMAKE_BUILD_TYPE=Release
sudo make install
