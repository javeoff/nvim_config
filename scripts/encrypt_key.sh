#!/bin/bash

SSH_KEY_PATH=~/.ssh/id_rsa
SSH_PUB_KEY_PATH=~/.ssh/id_rsa.pub

if [ ! -f "$SSH_KEY_PATH" ] || [ ! -f "$SSH_PUB_KEY_PATH" ]; then
  echo "SSH private or public key not found at ~/.ssh/"
  exit 1
fi

read -sp "Enter password: " PASSWORD
echo

PREFIX="id_rsa"
OUTPUT_PATH=./keys/${PREFIX}

mkdir -p ./keys

while [ -f "${OUTPUT_PATH}" ] || [ -f "${OUTPUT_PATH}.pub" ]; do
  echo "Files ${OUTPUT_PATH} or ${OUTPUT_PATH}.pub already exist."
  read -p "Enter a different prefix for the files: " PREFIX
  OUTPUT_PATH=./keys/${PREFIX}
done

PRIVATE_KEY=$(cat "$SSH_KEY_PATH")
PUBLIC_KEY=$(cat "$SSH_PUB_KEY_PATH")
ENCRYPTED_KEY=$(echo "$PRIVATE_KEY" | openssl enc -aes-256-cbc -a -salt -pass pass:"$PASSWORD")
ENCRYPTED_PUB_KEY=$(echo "$PUBLIC_KEY" | openssl enc -aes-256-cbc -a -salt -pass pass:"$PASSWORD")

echo "$ENCRYPTED_KEY" > "${OUTPUT_PATH}"
echo "$ENCRYPTED_PUB_KEY" > "${OUTPUT_PATH}.pub"
echo "Private and public keys encrypted and saved to ${OUTPUT_PATH} and ${OUTPUT_PATH}.pub"

