#!/bin/bash

read -p "Enter the prefix for the files to decrypt (default is id_rsa): " PREFIX
PREFIX=${PREFIX:-id_rsa}
ENCRYPTED_KEY_PATH=./keys/${PREFIX}
ENCRYPTED_PUB_KEY_PATH=./keys/${PREFIX}.pub

if [ ! -f "$ENCRYPTED_KEY_PATH" ] || [ ! -f "$ENCRYPTED_PUB_KEY_PATH" ]; then
  echo "Encrypted files not found at $ENCRYPTED_KEY_PATH or $ENCRYPTED_PUB_KEY_PATH"
  exit 1
fi

read -sp "Enter password: " PASSWORD
echo

ENCRYPTED_KEY=$(cat "$ENCRYPTED_KEY_PATH")
ENCRYPTED_PUB_KEY=$(cat "$ENCRYPTED_PUB_KEY_PATH")
DECRYPTED_KEY=$(echo "$ENCRYPTED_KEY" | openssl enc -aes-256-cbc -a -d -salt -pass pass:"$PASSWORD")
DECRYPTED_PUB_KEY=$(echo "$ENCRYPTED_PUB_KEY" | openssl enc -aes-256-cbc -a -d -salt -pass pass:"$PASSWORD")

if [ $? -ne 0 ]; then
  echo "Error: Incorrect password or corrupted file."
else
  echo "Your decrypted SSH private key:"
  echo "$DECRYPTED_KEY"
  echo "Your decrypted SSH public key:"
  echo "$DECRYPTED_PUB_KEY"
fi

read -p "Do you want to save the private key to ~/.ssh/id_rsa? (y/n): " SAVE_PRIV_KEY
if [ "$SAVE_PRIV_KEY" = "y" ]; then
  PRIV_KEY_PATH=~/.ssh/id_rsa
  PUB_KEY_PATH=~/.ssh/id_rsa.pub

  while [ -f "$PRIV_KEY_PATH" ] || [ -f "$PUB_KEY_PATH" ]; do
    echo "Files $PRIV_KEY_PATH or $PUB_KEY_PATH already exist."
    read -p "Enter a different prefix for the files: " PREFIX
    PRIV_KEY_PATH=~/.ssh/${PREFIX}
    PUB_KEY_PATH=~/.ssh/${PREFIX}.pub
  done

  echo "$DECRYPTED_KEY" > "$PRIV_KEY_PATH"
  echo "Private key saved to $PRIV_KEY_PATH"

  read -p "Do you want to save the public key to ${PUB_KEY_PATH}? (y/n): " SAVE_PUB_KEY
  if [ "$SAVE_PUB_KEY" = "y" ]; then
    echo "$DECRYPTED_PUB_KEY" > "$PUB_KEY_PATH"
    echo "Public key saved to $PUB_KEY_PATH"
  fi
fi

