#!/bin/bash

read -p "Enter the prefix for the files to decrypt (default is id_rsa): " PREFIX
PREFIX=${PREFIX:-id_rsa}
ENCRYPTED_KEY_PATH=./.${PREFIX}

if [ ! -f "$ENCRYPTED_KEY_PATH" ]; then
  echo "Encrypted file not found at $ENCRYPTED_KEY_PATH"
  exit 1
fi

read -sp "Enter password: " PASSWORD
echo

ENCRYPTED_KEY=$(cat "$ENCRYPTED_KEY_PATH")
DECRYPTED_KEY=$(echo "$ENCRYPTED_KEY" | openssl enc -aes-256-cbc -a -d -salt -pass pass:"$PASSWORD")

if [ $? -ne 0 ]; then
  echo "Error: Incorrect password or corrupted file."
else
  echo "Your decrypted SSH private key:"
  echo "$DECRYPTED_KEY"
fi
