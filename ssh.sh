echo -e "\033[32mRunning ssh.sh\033[0m"
ansible-vault decrypt $HOME/setup/.ssh/id_rsa
mkdir -p $HOME/.ssh
cp $HOME/setup/.ssh/id_rsa $HOME/.ssh/
cp $HOME/setup/.ssh/id_rsa.pub $HOME/.ssh/
