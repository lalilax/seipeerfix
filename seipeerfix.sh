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
echo -e "${yesil}.__         .__  .__.__                   ${f}"
echo -e "${yesil}|  | _____  |  | |__|  | _____  ___  ___  ${f}"
echo -e "${yesil}|  | \__  \ |  | |  |  | \__  \ \  \/  /  ${f}"
echo -e "${yesil}|  |__/ __ \|  |_|  |  |__/ __ \_>    <   ${f}"
echo -e "${yesil}|____(____  /____/__|____(____  /__/\_ \  ${f}"
echo -e "${yesil}          \/                  \/      \/  ${f}"
echo -e "${yesil}         [SEI PEER FIX PACK]              ${f}"
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
clear
journalctl -u seid -f


