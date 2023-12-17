#!/bin/bash

pkgs=(git terminator gnome-tweaks gnome-shell-extension-system-monitor curl vlc fzf obs-studio ffmpeg tldr neofetch net-tools python3 python3-pip)
snaps=(btop)

echo -e "\nUPDATE\n"
sudo apt-get update

echo -e "\nUPGRADE\n"
sudo apt-get -y upgrade

echo -e "\nINSTALLING PACKAGES...\n"
sudo apt-get -y --ignore-missing install "${pkgs[@]}" 
#wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
#sudo dpkg -i google-chrome-stable_current_amd64.deb
#rm google-chrome-stable_current_amd64.deb
sudo snap install "${snaps[@]}" 
sudo snap install --classic code

echo -e "\nSETTING UP...\n"
alias python=python3
alias pip=pip3

echo -e "\nDONE\n"

