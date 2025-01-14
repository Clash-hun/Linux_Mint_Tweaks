#!/bin/bash
GREEN='\e[0;92m'
WHITE='\033[0;37m' 
RED='\033[0;31m'

# Enable fstrim
echo -e "${GREEN}Enable fstrim${WHITE}"
read -p "Press y to continue: " up_firm

if [ $up_firm == "y" ];
then
  sudo fstrim -v /
  sudo systemctl enable fstrim.timer
  sudo systemctl start fstrim.timer
  systemctl status fstrim.timer
fi
