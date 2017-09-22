#!/bin/bash

ansible-playbook -i hosts/verb_hosts keystone-status.yml

if [ $? -eq 0 ]
then
  echo "Ok"
else
  echo "Fail"
  exit 1
fi
