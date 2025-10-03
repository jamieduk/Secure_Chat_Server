#!/bin/bash
# (c)J~Net 2025
#
# Usage:
#   ./connect.sh Jay
#
# Remote Server (Backup)
#   ssh chat.shazow.net
#
# Server Example:
#   ./ssh-chat --verbose --bind ":2025" --identity ~/.ssh/id_dsa
#
# Test Server:
#   ssh localhost -p 2025

host="jnet.sytes.net" # Change to your own for example localhost
port=2025             # change port to match server you connecting to!

if [ -z "$1" ]
then
      echo "Enter Alias"
      read username
else
      username=$1
      echo "Alias Set To $username"
fi

# Connect via ssh with rsa compatibility
ssh -oHostKeyAlgorithms=+ssh-rsa -oPubkeyAcceptedAlgorithms=+ssh-rsa $username@$host -p $port

# Remote Access Example:
#   ssh jnet.sytes.net -p 2025
