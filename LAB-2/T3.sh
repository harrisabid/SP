#!/bin/bash

showAllOwners()
{
username=$1 #setting the variable
for i in `ls` #traversing files and folders in pwd
do
	set `ls -li $i` #matching positional arguments with the details of file
	shift			#shifting so $9 can now get the filename
	if [ -f $i ] #checking if i holds the value and not the directory
	then
		if [ $username = $3 ] #comparing username with owner name
		then
			echo "Filename:  " $9 "  "  $3 #printing results
		fi
	fi
done
}
cd ~/ #Changing directory to home
showAllOwners $1 #$1 will hold the name of owner as given through cmd line args
