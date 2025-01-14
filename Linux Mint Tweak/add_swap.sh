#!/bin/bash
GREEN='\e[0;92m'
WHITE='\033[0;37m'
RED='\033[0;31m'

read -p "Do you want to create a swapfile? Press y to continue: " swap

if [ "$swap" == "y" ]; then
  echo -e "${GREEN}Creating swapfile...${WHITE}"
  sudo fallocate -l 4G /swapfile
  sudo chmod 600 /swapfile
  sudo mkswap /swapfile
  sudo swapon /swapfile
  
  if [ $? -ne 0 ]; then
    echo -e "${RED}Failed to create swapfile!${WHITE}"
    exit 1
  fi

  echo -e "${GREEN}Swapfile created successfully!${WHITE}"

  read -p "Do you want to add the swapfile entry to /etc/fstab? Press y to continue: " add_swap

  if [ "$add_swap" == "y" ]; then
    echo -e "${GREEN}Adding swap file entry to /etc/fstab...${WHITE}"
    echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
    
    if [ $? -ne 0 ]; then
      echo -e "${RED}Failed to add swap file entry to /etc/fstab!${WHITE}"
      exit 1
    fi

    echo -e "${GREEN}Swap file entry added to /etc/fstab successfully!${WHITE}"
  else
    echo -e "${RED}Operation cancelled.${WHITE}"
  fi
else
  echo -e "${RED}Swapfile creation cancelled.${WHITE}"
fi

