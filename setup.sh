#!/bin/bash
echo "Setting Up Secure Chat 2023 "
sudo apt install -y sshpass


dlpath="/home/$USER/Documents/Scripts/Bash/Secure_Chat_Server" # Downloads
echo "Setting Up Secure Chat Room Server & Client"
cd $dlpath
wget -c https://github.com/shazow/ssh-chat/releases/download/v1.6/ssh-chat-linux_amd64.tgz
tar -xvf ssh-chat-linux_amd64.tgz
cd ssh-chat/
./ssh-chat
cd ..
sudo chmod +x *.sh

echo "Whats Your Email? (Used for keygen creating for server side...)"
read email
ssh-keygen -t rsa -b 4096 -C "$email" -f $HOME/.ssh/id_dsa
