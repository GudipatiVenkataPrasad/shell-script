#!/bin/bash

ID=$(id -u)

if( $ID -ne 0 )
then
   echo "Error:: Please run this script with root access"
  exit 1
else
  echo "Yes you are root user"
fi

yum install mysql -y