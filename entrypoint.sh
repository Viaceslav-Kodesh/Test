#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo ::set-output name=time::$time
apt update
apt install python-pip
pip install jsonlib
pip install python-novaclient
pip install credentials
pip install python-openstacksdk
apt update
