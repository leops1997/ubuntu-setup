#!/bin/bash

echo -e "\nUPDATE\n"
sudo apt-get update

echo -e "\nUPGRADE\n"
sudo apt-get -y upgrade

echo -e "\nINSTALLING CARLA...\n"

pip install --upgrade pip
pip install --user pygame numpy
mkdir ~/carla-simulator
cd ~/carla-simulator
wget https://carla-releases.s3.us-east-005.backblazeb2.com/Linux/CARLA_0.9.14_RSS.tar.gz
tar xvzf ~/carla-simulator/CARLA_0.9.14_RSS.tar.gz --directory ~/carla-simulator
sh ~/carla-simulator/ImportAssets.sh
pip install -r ~/carla-simulator/PythonAPI/examples/requirements.txt
pip install -r ~/carla-simulator/PythonAPI/carla/requirements.txt
echo 'export VK_ICD_FILENAMES="/usr/share/vulkan/icd.d/nvidia_icd.json"' >> ~/.bashrc 
echo 'export VK_ICD_FILENAMES="/usr/share/vulkan/icd.d/nvidia_icd.json"' >> ~/.zshrc 

echo -e "\nDONE\n"

