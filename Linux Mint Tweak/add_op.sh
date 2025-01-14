#!/bin/bash
GREEN='\e[0;92m'
WHITE='\033[0;37m' 
RED='\033[0;31m'

read -p "Do you want to Optimization Linux Mint? Press y to continue: " OPT

if [ "$OPT" == "y" ]; then
  echo -e "${GREEN}Deleting cache...${WHITE}"
  rm -rfv ~/.cache/thumbnails
  if [ $? -ne 0 ]; then
    echo -e "${RED}Failed to Cache Delete!${WHITE}"
    exit 1
  fi

  echo -e "${GREEN}Set up journalctl...${WHITE}"
  sudo journalctl --vacuum-size=40M
  if [ $? -ne 0 ]; then
    echo -e "${RED}Failed to Set up journalctl!${WHITE}"
    exit 1
  fi

  echo -e "${GREEN}Firewall log off...${WHITE}"
  sudo ufw logging off
  if [ $? -ne 0 ]; then
    echo -e "${RED}Failed to ufw log off!${WHITE}"
    exit 1
  fi

 echo -e "${GREEN}Autoremove...${WHITE}"
  sudo apt autoremove
  if [ $? -ne 0 ]; then
    echo -e "${RED}Failed to Autoremove!${WHITE}"
    exit 1
  fi

  echo -e "${GREEN}All Linux Mint optimize successfully!${WHITE}"
else
  echo -e "${RED}Operation cancelled.${WHITE}"
fi


