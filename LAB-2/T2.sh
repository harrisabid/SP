#!/bin/bash

Process()
{
set `ps -all -A | grep $1`

#now printing...
	echo "PID: " $4 
	echo "PPID: " $5	
	shift 5
	echo "Name: " $9
}
Process $1 #$1 has name of running process
