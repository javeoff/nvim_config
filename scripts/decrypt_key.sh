#!/bin/bash

read -p "Enter the prefix for the files to decrypt (default is id_rsa): " PREFIX
PREFIX=${PREFIX:-id_rsa}
ENCRYPTED_KEY_PATH=~/.git/${PREFIX}

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

read -p "Do you want to generate the public key from the private key? (y/n): " GEN_PUB_KEY
if [ "$GEN_PUB_KEY" = "y" ]; then
  TEMP_PRIV_KEY=$(mktemp)
  echo "$DECRYPTED_KEY" > "$TEMP_PRIV_KEY"
  PUB_KEY=$(ssh-keygen -y -f "$TEMP_PRIV_KEY")
  rm "$TEMP_PRIV_KEY"

  read -p "Do you want to save the private key to ~/.ssh/id_rsa? (y/n): " SAVE_PRIV_KEY
  if [ "$SAVE_PRIV_KEY" = "

