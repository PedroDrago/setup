echo -e "\033[32mRunning docker.sh\033[0m"
# sudo sysctl -w kernel.apparmor_restrict_unprivileged_userns=0 
# #temporary. Because ubuntu 24.04 is not fully supported yet
#
#
# sudo install -m 0755 -d /etc/apt/keyrings
# sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
# sudo chmod a+r /etc/apt/keyrings/docker.asc
#
# #may need to swap VERSION_CODENAME for UBUNTU_CODENAME
# echo -e "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu $(. /etc/os-release && echo -e "$VERSION_CODENAME") stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
# sudo apt-get update
# sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
