#!/bin/bash

user2=$4
file2=$3
user1=$2
file1=$1

set `ls -li $1` 

owner=$5
echo "Owner: " $owner
echo "Group: " $4
echo "Permissions: " $2
shift
echo "Filename: " $9
if [ $owner = $user1 ] 
	then
	echo "Cheating: " 0
else
	echo "Cheating: " 1
fi

if ( test ${#file2} -gt 0 && test ${file2} != $user1 )
then
	set `ls -li ${file2[0]}` 

	echo "Owner: " $5
	echo "Group: " $4
	echo "Permissions: " $2
	shift
	echo "Filename: " $9
	diff -c $file1 $9
	if [ $? -eq 0 ]
	then 
	echo "NO cheating"
	else
	echo "Cheating"
	fi
fi
