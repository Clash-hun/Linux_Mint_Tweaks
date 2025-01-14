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
  echo -e "${GREEN}Adding VLC PPA...${WHITE}"
  sudo add-apt-repository -y ppa:ubuntuhandbook1/vlc
  if [ $? -ne 0 ]; then
    echo -e "${RED}Failed to add VLC PPA!${WHITE}"
    exit 1
  fi

  echo -e "${GREEN}Updating package list...${WHITE}"
  sudo apt update
  if [ $? -ne 0 ]; then
    echo -e "${RED}Failed to update package list!${WHITE}"
    exit 1
  fi

  echo -e "${GREEN}Installing VLC...${WHITE}"
  sudo apt install -y vlc
  if [ $? -ne 0 ]; then
    echo -e "${RED}Failed to install VLC!${WHITE}"
    exit 1
  fi

  echo -e "${GREEN}VLC PPA added, package list updated, and VLC installed successfully!${WHITE}"
else
  echo -e "${RED}Operation cancelled.${WHITE}"
fi


