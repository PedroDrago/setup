echo -e "\033[32mRunning docker.sh\033[0m"

sudo pacman -S --needed --noconfirm docker 
sudo systemctl start docker.service
sudo systemctl enable docker.service
sudo usermod -aG docker $USER
