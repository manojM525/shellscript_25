#!/bin/bash

ID=$(id -u) 

VALIDATE() {

 if [ $1 -ne 0 ]   
then 
echo " $2..FAILED"
exit 1
else
echo "  $2 ... SUCCESS"
fi

}



if [ $ID -ne 0 ]
then 
echo "not a root user"
exit 1
else
echo "you are a root user"
fi

dnf install mysql -y
VALIDATE $? "installation of MYSQL"

dnf install git -y
VALIDATE $? "installation of GIT"
