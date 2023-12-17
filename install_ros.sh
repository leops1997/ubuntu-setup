#!/bin/bash

echo -e "\nINSTALLING ROS NOETIC...\n"

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -

echo -e "\nUPDATE\n"
sudo apt-get update

echo -e "\nUPGRADE\n"
sudo apt-get -y upgrade

echo -e "\nINSTALLING PACKAGES...\n"
sudo apt-get -y --ignore-missing install ros-noetic-desktop-full

source /opt/ros/noetic/setup.bash

echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
source ~/.bashrc

echo "source /opt/ros/noetic/setup.zsh" >> ~/.zshrc
source ~/.zshrc

sudo apt-get -y --ignore-missing install python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential

sudo apt-get -y --ignore-missing install python3-rosdep

sudo rosdep init
rosdep update

echo -e "\nDONE\n"
