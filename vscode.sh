echo -e "\033[32mRunning vscode.sh\033[0m"

curl "https://vscode.download.prss.microsoft.com/dbazure/download/stable/89de5a8d4d6205e5b11647eb6a74844ca23d2573/code_1.90.0-1717531825_amd64.deb" -o $HOME/vscode.deb
sudo apt install $HOME/vscode.deb
rm -f $HOME/vscode.deb
