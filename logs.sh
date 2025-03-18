#!/bin/bash

ID=$(id -u) 
TIMESTAMP=$(date + " %Y-%m-%d_%H:%M:%S")
SCRIPT_NAME=$($?)
LOGFILE=/temp/$SCRIPT_NAME-$TIMESTAMP.log

VALIDATE() {

 if [ $1 -ne 0 ]   
then 
echo " $2..FAILED"
exit 1
else
echo "  $2 ... SUCCESS"
fi

}

echo "the script started running at: $TIMESTAMP" &>> $LOGFILE

if [ $ID -ne 0 ]
then 
echo "not a root user"
exit 1
else
echo "you are a root user"
fi

dnf install mysql -y &>> $LOGFILE
VALIDATE $? "installation of MYSQL"  #deploying packages using custom messages

dnf install git -y &>> $LOGFILE
VALIDATE $? "installation of GIT" 
