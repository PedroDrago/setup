echo -e "\033[32mRunning chrome.sh\033[0m"
set -e

curl "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb" -o $HOME/chrome.deb
sudo apt install $HOME/chrome.deb -y
rm -f $HOME/chrome.deb
