#!/bin/bash

ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

TIMESTAMP=$(date +%F)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

VALIDATE(){
    if [$1 -ne 0]
    then 
        echo -e "$2....$R Failed $N"
    else
        echo -e "$2...$G Sucess $N"
    fi
}

if [ $ID -ne 0]
then 
    echo -e "$R ERROR: please run this script with root access $N"
    exit 1
else 
    echo "Your Root user"
fi

for package in $@
do 
    yum list installed $package &>> $LOGFILE
    if [$? -ne 0]
    then 
        yum install $package -y &>> $LOGFILE
        VALIDATE $? "Insatallation of $package"
    else 
        echo -e "$package is already installed ....$Y SKYPPING $N"
    fi
done 

 
