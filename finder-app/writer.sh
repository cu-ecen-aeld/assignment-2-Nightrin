#!/bin/sh
if [ $# -eq 2 ]
then
	writefile=$1
	writestr=$2
	mkdir -p  ${writefile%/*} && echo ${writestr} > ${writefile} 
	exit 0
else
	echo "Parameters are not correct"
	exit 1
	
fi