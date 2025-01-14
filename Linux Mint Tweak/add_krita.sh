#!/bin/bash
GREEN='\e[0;92m'
WHITE='\033[0;37m' 
RED='\033[0;31m'

#!/bin/bash
GREEN='\e[0;92m'
WHITE='\033[0;37m' 
RED='\033[0;31m'

read -p "Do you want to add Krita PPA and install Krita? Press y to continue: " add_PPA

if [ "$add_PPA" == "y" ]; then
  echo -e "${GREEN}Adding Krita PPA...${WHITE}"
  sudo sudo add-apt-repository ppa:ubuntuhandbook1/krita
  if [ $? -ne 0 ]; then
    echo -e "${RED}Failed to add Krita PPA!${WHITE}"
    exit 1
  fi

  echo -e "${GREEN}Updating package list...${WHITE}"
  sudo apt update
  if [ $? -ne 0 ]; then
    echo -e "${RED}Failed to update package list!${WHITE}"
    exit 1
  fi

  echo -e "${GREEN}Installing Krita...${WHITE}"
  sudo apt install -y krita
  if [ $? -ne 0 ]; then
    echo -e "${RED}Failed to install Krita!${WHITE}"
    exit 1
  fi

  echo -e "${GREEN}Krita PPA added, package list updated, and Krita installed successfully!${WHITE}"
else
  echo -e "${RED}Operation cancelled.${WHITE}"
fi


