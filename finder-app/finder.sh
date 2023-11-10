#!/bin/sh


if [ $# -eq 2 ]
then
	filesdir=$1
	searchstr=$2
	NUMFILES=$(grep -r ${filesdir} -e ${searchstr} -o | wc -l)
	echo "The number of files are ${NUMFILES} and the number of matching lines are ${NUMFILES}"
else
	echo "Parameters are not correct"
	exit 1
	
fi