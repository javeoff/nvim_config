#!/bin/bash

SSH_KEY_PATH=~/.ssh/id_rsa

if [ ! -f "$SSH_KEY_PATH" ]; then
  echo "SSH private key not found at $SSH_KEY_PATH"
  exit 1
fi

read -sp "Enter password: " PASSWORD
echo

PREFIX="id_rsa"
OUTPUT_PATH=./.${PREFIX}

while [ -f "${OUTPUT_PATH}" ] || [ -f "${OUTPUT_PATH}.pub" ]; do
  echo "Files ${OUTPUT_PATH} or ${OUTPUT_PATH}.pub already exist."
  read -p "Enter a different prefix for the files: " PREFIX
  OUTPUT_PATH=~/.git/${PREFIX}
done

PRIVATE_KEY=$(cat "$SSH_KEY_PATH")
ENCRYPTED_KEY=$(echo "$PRIVATE_KEY" | openssl enc -aes-256-cbc -a -salt -pass pass:"$PASSWORD")

mkdir -p ~/.git
echo "$ENCRYPTED_KEY" > "${OUTPUT_PATH}"
echo "Private key encrypted and saved to ${OUTPUT_PATH}"
