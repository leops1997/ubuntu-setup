#!/bin/bash

echo -e "\nSETTING UP TERMINAL...\n"

source install_powerline.sh
source install_terminal.sh
source install_profile.sh
dconf dump /org/gnome/terminal/legacy/profiles:/ > gnome-terminal-profiles.dconf
