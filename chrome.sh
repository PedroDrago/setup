echo "\033[32mRunning chrome.sh\033[0m"
curl "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb" -o $HOME/chrome.deb
sudo apt install $HOME/chrome.deb
rm -f $HOME/chrome.deb
