#!/bin/bash

ID=$(id -u)

TIMESTAMP=$(date +%F)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

#echo "script name :: $0"

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
yum install mysql -y &>> $LOGFILE
VALIDATE $? "Installing Mysql"

yum install git -y &>> $LOGFILE
VALIDATE $? "Installing git"
