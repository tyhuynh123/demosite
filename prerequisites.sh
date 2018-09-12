#!/bin/bash

## Create RSA key variable  
rsakey=$(cat ~/.ssh/id_rsa.pub)

## Adding RSA key to user_data 
echo -e "\n"
echo -e "echo $rsakey >> /home/ansible/.ssh/authorized_keys\n" >> roles/aws_create_instance/templates/user_data 

## Adding sshd restart to user_data
echo -e "service sshd restart\n" >> roles/aws_create_instance/templates/user_data

## Installing all prerequisites package throught python pip
curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
python get-pip.py && pip install ansible awscli boto
