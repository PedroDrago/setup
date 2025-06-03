echo -e "\033[32mRunning docker.sh\033[0m"
set -e

curl -fsSl https://get.docker.com | bash
sudo usermod -aG docker $USER
