#!/bin/bash

NUMBER1=$1
NUMBER2=$2

SUM=$(($NUMBER1+$NUMBER2))

echo "total sum is : $SUM"

echo "total number of args passed:"$#"  "
echo "all args passed: "$@" "
echo "script name is: "$0" "
