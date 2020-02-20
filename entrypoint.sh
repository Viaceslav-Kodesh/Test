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
OS_AUTH_URL: ${{secrets.OS_AUTH_URL}}
OS_PASSWORD: ${{secrets.OS_PASSWORD}}
OS_TENANT_NAME: ${{secrets.OS_TENANT_NAME}}
OS_USERNAME: ${{secrets.OS_USERNAME}}
OS_USER_DOMAIN_NAME: ${{secrets.OS_USER_DOMAIN_NAME}}
python demo.py
