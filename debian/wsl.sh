set -e
bash $HOME/setup/debian/installs.sh
bash $HOME/setup/debian/ssh.sh
bash $HOME/setup/debian/nvim.sh
bash $HOME/setup/debian/docker.sh
bash $HOME/setup/debian/omz.sh
bash $HOME/setup/debian/dotfiles.sh
bash $HOME/setup/debian/mise.sh
bash $HOME/setup/debian/langs.sh
bash $HOME/setup/debian/eza.sh
chsh -s $(which zsh)
sudo reboot -f
