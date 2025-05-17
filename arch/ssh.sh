echo -e "\033[32mRunning ssh.sh\033[0m"

SSH_DIR="$HOME/.ssh"
FILES="$SSH_DIR/azure/id_rsa $SSH_DIR/github/id_rsa" #substitute for automation that finds all id_rsa files inside sshdir
TARGET_DIR="$HOME/setup/.ssh"
# Find all id_rsa files recursively and store them in a single string

rm -rf $HOME/.ssh
cp -r "$HOME/setup/.ssh" $HOME/.ssh
RSA_FILES=$(find "$SSH_DIR" -type f -name "id_rsa" -print | tr '\n' ' ')

ansible-vault decrypt $RSA_FILES
