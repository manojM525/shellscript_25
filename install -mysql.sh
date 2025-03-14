#!/bin/bash

ID=$(id) 

if [ $ID -ne 0 ]
then 
""echo "not a root user"
exit 1
else
echo "you are a root user"
fi

dnf install mysql_server -y

if [ "#?" -ne 0 ]
then 
echo "installation of mysql ...FAILED"
exit 1
else
echo "installation of mysql ... SUCCESS"

