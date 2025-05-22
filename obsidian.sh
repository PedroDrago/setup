echo -e "\033[32mRunning obsidian.sh\033[0m"

curl -Lo obsidian.deb https://github.com/obsidianmd/obsidian-releases/releases/download/v1.8.10/obsidian_1.8.10_amd64.deb
sudo apt install ./obsidian.deb -y
sudo apt update -y && sudo apt upgrade -y
rm -f ./obsidian.deb
