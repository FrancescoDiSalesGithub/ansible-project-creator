#!/bin/bash

nameProject=$1

if [ -z $nameProject ] then

  echo "please pass the name of the ansible project"

else

  currentPwd = $(pwd)
  echo -n "how many roles do you want to insert"
  read counterRoles

  for ((i=0;i<$counterRoles;i++)); do

    echo -n "insert the name of the role"
    read nameRole

    mkdir -p $currentPwd/$nameProject/roles/$nameRole
    touch $currentPwd/$nameProject/roles/main.yml
    
  done

  mkdir -p $currentPwd/$nameProject/inventory
  touch $currentPwd/$nameProject/inventory/inventory.ini

fi
