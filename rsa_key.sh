#!/bin/bash

## Create RSA key variable  
rsakey=$(cat ~/.ssh/id_rsa.pub)

## Adding RSA key to user_data 
echo "$rsakey >> /home/ansible/.ssh/authorized_keys" >> roles/aws_create_instance/templates/user_data 

## Adding sshd restart to user_data
echo "service sshd restart" >> roles/aws_create_instance/templates/user_data


curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
python get-pip.py

