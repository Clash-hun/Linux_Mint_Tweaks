#!/bin/bash
GREEN='\e[0;92m'
WHITE='\033[0;37m' 
RED='\033[0;31m'

#!/bin/bash
GREEN='\e[0;92m'
WHITE='\033[0;37m' 
RED='\033[0;31m'

read -p "Do you want to add Inkscape PPA and install Inkscape? Press y to continue: " add_PPA

if [ "$add_PPA" == "y" ]; then
  echo -e "${GREEN}Adding Inkscape PPA...${WHITE}"
  sudo sudo add-apt-repository ppa:inkscape.dev/stable
  if [ $? -ne 0 ]; then
    echo -e "${RED}Failed to add Inkscape PPA!${WHITE}"
    exit 1
  fi

  echo -e "${GREEN}Updating package list...${WHITE}"
  sudo apt update
  if [ $? -ne 0 ]; then
    echo -e "${RED}Failed to update package list!${WHITE}"
    exit 1
  fi

  echo -e "${GREEN}Installing Inkscape...${WHITE}"
  sudo apt install -y inkscape
  if [ $? -ne 0 ]; then
    echo -e "${RED}Failed to install Inkscape!${WHITE}"
    exit 1
  fi

  echo -e "${GREEN}Inkscape PPA added, package list updated, and Inkscape installed successfully!${WHITE}"
else
  echo -e "${RED}Operation cancelled.${WHITE}"
fi


