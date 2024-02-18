#!/bin/bash
# Remote Server (Backup)
#ssh chat.shazow.net
# sudo apt install -y sshpass
#
# Server
path="/home/$USER/Documents/Scripts/Crypto/nc/Messaging/Chat_Server"
#
sshpass -p "PASSWORD-HERE" $path/ssh-chat --verbose --bind ":2022" --identity ~/.ssh/id_dsa --log=$path/log.txt --motd=$path/message.txt --admin=$path/admins.txt
#sudo ./ssh-chat --verbose --bind ":2022" --identity ~/.ssh/id_dsa --log=log.txt --motd=message.txt --admin=admins.txt
# Connect To Test Server (jnet.sytes.net)
#ssh localhost -p 2022
#
#Application Options:
#  -v, --verbose    Show verbose logging.
#      --version    Print version and exit.
#  -i, --identity=  Private key to identify server with. (default: ~/.ssh/id_rsa)
#      --bind=      Host and port to listen on. (default: 0.0.0.0:2022)
#      --admin=     File of public keys who are admins.
#      --whitelist= Optional file of public keys who are allowed to connect.
#      --motd=      Optional Message of the Day file.
#      --log=       Write chat log to this file.
#      --pprof=     Enable pprof http server for profiling.
