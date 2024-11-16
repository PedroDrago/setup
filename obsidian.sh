echo -e "\033[32mRunning obsidian.sh\033[0m"

curl -Lo obsidian.deb https://github.com/obsidianmd/obsidian-releases/releases/download/v1.7.6/obsidian_1.7.6_amd64.deb
sudo apt install ./obsidian.deb -y
sudo apt update -y && sudo apt upgrade -y
rm -f ./obsidian.deb
