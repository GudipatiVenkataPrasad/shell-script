#!/bin/bash

ID=$(id -u)

VALIDATE()
{

    if [ $? -ne 0 ]
    then 
        echo "ERROR :: $2.. failed"
        exit 1
    else 
        echo "$2... scuess"s

    fi
}


if [ $? -ne 0 ]
then 
    echo "ERROR :: Installing Mysql is failed"
    exit 1
else 
    echo "Installing mysql is scuess"s

fi
yum install mysql -y
VALIDATE $? "Installing Mysql"

yum install git -y
VALIDATE $? "Installing git"
