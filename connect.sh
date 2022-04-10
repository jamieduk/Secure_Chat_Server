#!/bin/bash
# (c)J~Net 2022
#
#  ./connect.sh Jay
#
# Remote Server (Backup)
#ssh chat.shazow.net
# Server
# ./ssh-chat --verbose --bind ":2022" --identity ~/.ssh/id_dsa
# Connect To Test Server (jnet.sytes.net)
host="localhost"
port=2022

if [ -z "$1" ]
then
      echo "Enter Alias"
      read username
else
      username=$1
      echo "Alias Set To $username "
fi

# Connect via ssh
ssh $username@$host -p $port
# Remote Access!
# ssh jnet.sytes.net -p 2022
