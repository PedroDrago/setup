#!/usr/bin/env bash
echo -e "\033[32mRunning ssh.sh\033[0m"

set -euo pipefail

mkdir -p "$HOME/.ssh/github"

chmod 700 "$HOME/.ssh"
chmod 700 "$HOME/.ssh/github"

cat > "$HOME/.ssh/config" <<'EOF'
Host github.com
    HostName github.com
    User git
    IdentityFile ~/.ssh/github/key
    IdentitiesOnly yes
EOF

ssh-keygen \
  -t ed25519 \
  -a 100 \
  -C "contact@pedrodrago.com" \
  -f "$HOME/.ssh/github/key"

chmod 600 "$HOME/.ssh/github/key"
chmod 644 "$HOME/.ssh/github/key.pub"

echo
echo "Register the public key above in GitHub:"
cat "$HOME/.ssh/github/key.pub"
echo
read -r -p "Press Enter after registering the key in GitHub..."
