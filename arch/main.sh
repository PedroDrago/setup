set -e

MACHINE="-"
KERNEL=$(uname -r)
if lscpu | grep "Model name" | grep -q "i7-8700"; then
    MACHINE="desktop"
fi

pacman -Syu --noconfirm 
pacman -S --noconfirm --needed git base-devel
bash $HOME/setup/arch/yay.sh
bash $HOME/setup/arch/installs.sh
bash $HOME/setup/arch/ssh.sh
bash $HOME/setup/arch/nvim.sh
if [[ "$KERNEL" != *"WSL"* ]]; then
    bash $HOME/setup/arch/hyprland.sh
    bash $HOME/setup/arch/i3.sh
    bash $HOME/setup/arch/docker.sh
    bash $HOME/setup/arch/citrix.sh
fi
bash $HOME/setup/arch/omz.sh
bash $HOME/setup/arch/mise.sh
bash $HOME/setup/arch/dotfiles.sh
bash $HOME/setup/arch/langs.sh
chsh -s $(/usr/bin/zsh)
cd $HOME/setup && git remote rm origin && git remote add origin git@github.com:pedrodrago/setup.git
sudo reboot -f
