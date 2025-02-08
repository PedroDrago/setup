#!/bin/bash

PRIVATE_KEY_PATTERN=".ssh/*"

is_encrypted() {
    local file=$1
    head -n 1 "$file" | grep -q "^\$ANSIBLE_VAULT;"
}

for file in $PRIVATE_KEY_PATTERN; do
    if [[ -f $file ]] && [[ ! $file =~ \.pub$ ]] && [[ ! $file =~ "config" ]]; then
        if ! is_encrypted "$file"; then
            echo "Error: Private key '$file' is not encrypted with Ansible Vault."
        fi
    fi
done

exit 0
