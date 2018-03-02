#1/bin/bash

read -p "Enter 1st no: " num1
read -p "enter 2nd no: " num2

expr $num1 + 0
if [ $? -eq 0 ]
then
echo "valid"
else 
echo "unvalid"
ch=0
fi
expr $num2 + 0
if [ $? -eq 0 ]
then
echo "valid"
else
echo "unvalid"
ch=0
fi
if [ $ch -eq 1 ]
then
echo "add:" `expr $num1 + $num2`
echo "sub:" `expr $num1 - $num2`
echo "mul:" `expr $num1 \* $num2`
echo "div:" `expr $num1 / $num2`
fi
