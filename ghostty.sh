echo -e "\033[32mRunning ghostty.sh\033[0m"

git clone https://github.com/ghostty-org/ghostty.git $HOME/ghostty
cd $HOME/ghostty && zig build -Doptimize=ReleaseFast #how to build from "distance"?
sudo mv $HOME/ghostty/zig-out/bin/ghostty /usr/bin/
