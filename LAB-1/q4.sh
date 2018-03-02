#!/bin/bash

arr1=( `cat "file.txt"` )
echo "all: " ${arr1[*]}
echo "length" ${#arr1[*]}
echo "3rd index: " ${arr1[2]}
