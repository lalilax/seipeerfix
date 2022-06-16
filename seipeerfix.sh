#!/bin/bash

#Colors
sari="\033[1;33m"
mavi="\033[1;36m"
kirmizi="\033[1;31m"
yesil="\033[1;32m"
f="\033[0m"
mavik="\033[36m"

############################
#Peer Hatası Fix           #
#v1.0-16.06.2022           #
#lalilax                   #
############################



clear
echo -e "${f}\033[33m############################################################\e${f}"
echo -e "\033[33m ${f} $mavi PEER HATASI FİX | LALILAX ${f}"
echo -e "\033[33m############################################################\e${f}"
su root -c "echo -e '\e[1;31m'"
read -p "NODE ADINIZI GIRIN : " nodeadi
cd /root/.sei/config
rm -rf addrbook.json
rm -rf config.toml
wget https://raw.githubusercontent.com/lalilax/seipeerfix/main/addrbook.json
wget https://raw.githubusercontent.com/lalilax/seipeerfix/main/config.toml
clear
sed -i -e "s/NODE_ADI/$nodeadi/" config.toml
cd
clear
echo -e "\033[33m ${f} $mavi KONSOL BAŞLATILIYOR... ${f}"
sleep 2
clear
systemctl restart seid
celar
journalctl -u seid -f


