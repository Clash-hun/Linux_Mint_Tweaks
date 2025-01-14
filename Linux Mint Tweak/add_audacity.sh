#!/bin/bash
GREEN='\e[0;92m'
WHITE='\033[0;37m' 
RED='\033[0;31m'

#!/bin/bash
GREEN='\e[0;92m'
WHITE='\033[0;37m' 
RED='\033[0;31m'

read -p "Do you want to add VLC PPA and install VLC? Press y to continue: " add_PPA

if [ "$add_PPA" == "y" ]; then
  echo -e "${GREEN}Adding Audacity PPA...${WHITE}"
  sudo sudo add-apt-repository ppa:ubuntuhandbook1/audacity
  if [ $? -ne 0 ]; then
    echo -e "${RED}Failed to add Audacity PPA!${WHITE}"
    exit 1
  fi

  echo -e "${GREEN}Updating package list...${WHITE}"
  sudo apt update
  if [ $? -ne 0 ]; then
    echo -e "${RED}Failed to update package list!${WHITE}"
    exit 1
  fi

  echo -e "${GREEN}Installing Audacity...${WHITE}"
  sudo apt install -y audacity
  if [ $? -ne 0 ]; then
    echo -e "${RED}Failed to install Audacity!${WHITE}"
    exit 1
  fi

  echo -e "${GREEN}Audacity PPA added, package list updated, and Audacity installed successfully!${WHITE}"
else
  echo -e "${RED}Operation cancelled.${WHITE}"
fi


