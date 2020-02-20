#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo ::set-output name=time::$time
sudo apt update
sudo apt install python-pip
sudo pip install jsonlib
sudo pip install python-novaclient
sudo pip install credentials
sudo pip install python-openstacksdk
sudo apt update
