#!/bin/bash
GREEN='\e[0;92m'
WHITE='\033[0;37m'
RED='\033[0;31m'

read -p "Do you want to create Zswap? Press y to continue: " Zswap

if [ "$Zswap" == "y" ]; then
  echo -e "${GREEN}Creating Zswap...${WHITE}"

  read -p "Do you want to add Zswap configuration to /etc/default/grub? Press y to continue: " add_Zswap

  if [ "$add_Zswap" == "y" ]; then
    echo -e "${GREEN}Adding Zswap configuration to /etc/default/grub...${WHITE}"
    
    # Add Zswap configuration to /etc/default/grub
    sudo sed -i '/^GRUB_CMDLINE_LINUX_DEFAULT=/ s/"$/ zswap.enabled=1 zswap.compressor=lz4 zswap.max_pool_percent=25"/' /etc/default/grub
    
    if [ $? -ne 0 ]; then
      echo -e "${RED}Failed to add Zswap configuration to /etc/default/grub!${WHITE}"
      exit 1
    fi

    echo -e "${GREEN}Updating GRUB...${WHITE}"
    sudo update-grub

    if [ $? -ne 0 ]; then
      echo -e "${RED}Failed to update GRUB!${WHITE}"
      exit 1
    fi

    echo -e "${GREEN}Zswap configuration added and GRUB updated successfully!${WHITE}"
  else
    echo -e "${RED}Operation cancelled.${WHITE}"
  fi
else
  echo -e "${RED}Zswap creation cancelled.${WHITE}"
fi


