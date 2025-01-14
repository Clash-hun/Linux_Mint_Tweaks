#!/bin/bash
GREEN='\e[0;92m'
WHITE='\033[0;37m' 
RED='\033[0;31m'

# Update Firmware
echo -e "${GREEN}Updating firmware${WHITE}"
read -p "Press y to continue: " up_firm

if [ $up_firm == "y" ];
then
  sudo fwupdmgr get-devices 
  sudo fwupdmgr refresh --force 
  sudo fwupdmgr get-updates 
  sudo fwupdmgr update
fi
