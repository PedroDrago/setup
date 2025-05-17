echo -e "\033[32mRunning docker.sh\033[0m"

sudo systemctl start docker.service
sudo systemctl enable docker.service
sudo usermod -aG docker $USER
