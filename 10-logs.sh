#!/bin/bash

ID=$(id -u)

TIMESTAMP=$(date +%F)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

R="\e[31m"
G="\e[32m"
N="\e[0m"

#echo "script name :: $0"

VALIDATE()
{

    if [ $? -ne 0 ]
    then 
        echo  -e "ERROR :: $2..$R failed $N"
        exit 1
    else 
        echo -e "$2...  $G scuess $N"

    fi
}


if [ $? -ne 0 ]
then 
    echo "ERROR :: Installing Mysql is failed"
    exit 1
else 
    echo "Installing mysql is scuess"

fi
yum install mysql -y &>> $LOGFILE
VALIDATE $? "Installing Mysql"

yum install git -y &>> $LOGFILE
VALIDATE $? "Installing git"
