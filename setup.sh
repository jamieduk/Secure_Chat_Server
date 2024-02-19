#!/bin/bash
echo "Setting Up Secure Chat (c)J~Net 2023 "
sudo apt install -y sshpass

sudo chmod +x *.sh

dlpath=$(pwd)

echo "Setting Up Secure Chat Room Server & Client"
#cd $dlpath
#wget -c https://github.com/shazow/ssh-chat/releases/download/v1.6/ssh-chat-linux_amd64.tgz
#tar -xvf ssh-chat-linux_amd64.tgz
#cd ssh-chat/
touch admins.txt

# Check CPU Type
#!/bin/bash

# Get the CPU architecture
cpu_arch=$(uname -m)

# Check if the CPU architecture is arm64
if [ "$cpu_arch" == "aarch64" ]; then
    cputype="arm64"
    cp arm64/ssh-chat $dlpath
# Check if the CPU architecture is amd64 (x86_64)
elif [ "$cpu_arch" == "x86_64" ]; then
    cputype="amd64"
    cp amd64/ssh-chat $dlpath
else
    # If it's neither arm64 nor amd64, you can set it to another value or handle it accordingly
    cputype="unknown"
fi
echo "CPU Detected: $cputype"
#

echo "Whats Your Email? (Used for keygen creating for server side...)"
read email
ssh-keygen -t rsa -b 4096 -C "$email" -f $HOME/.ssh/id_dsa
#./ssh-chat
