#!/bin/bash
echo "Enter Your Alias To Connect To J~Net Multi-Chat"
read username
echo "Attempting To Join...`"
ssh $username@jnet.sytes.net -p 2022
