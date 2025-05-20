echo -e "\033[32mRunning yay.sh\033[0m"

git clone https://aur.archlinux.org/yay.git $HOME/yay
cd $HOME/yay
makepkg -si
cd $HOME && rm -rf $HOME/yay
