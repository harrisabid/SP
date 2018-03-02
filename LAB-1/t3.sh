#!/bin/bash

UNIX=( Derbian 'Red Hat' Ubantu Suse Fedora )


echo "array:" ${UNIX[*]}

echo "size:" ${#UNIX[*]}

echo "element at index 2:" ${#UNIX[2]}

echo ${UNIX[2]}

echo ${UNIX[3]}

echo "searching and replacing ubuntu with sco unix: " ${UNIX[@]/Ubantu/SCO}

unset UNIX[2]

echo "after removing 3rd element:" ${UNIX[*]} 
UNIX=( 'AIX' 'HP-UIX' ${UNIX[*]} )

echo "now array:" ${UNIX[*]}

LINUX=( ${UNIX[*]} )
echo "LINUX: " ${LINUX[*]}


BASH=( ${UNIX[*]}  ${LINUX[*]} )
echo "BASH: " ${BASH[*]}

unset LINUX[*]
unset UNIX[*]


echo "now LINUX " ${LINUX[*]}
echo "now UNIX  " ${UNIX[*]}
