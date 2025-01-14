#!/bin/bash
GREEN='\e[0;92m'
WHITE='\033[0;37m' 
RED='\033[0;31m'

# Add NVIDIA PPA
echo -e "${GREEN}Adding NVIDIA PPA${WHITE}"
read -p "Press y to continue: " add_PPA

if [ "$add_PPA" == "y" ]; then
  sudo add-apt-repository ppa:graphics-drivers/ppa
  sudo apt update
  echo -e "${GREEN}NVIDIA PPA added and package list updated!${WHITE}"
else
  echo -e "${RED}Operation cancelled.${WHITE}"
fi

