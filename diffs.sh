#!/bin/bash

#echo "Expected to be run after findIDS script!"
filename="unfao.me"
#echo "Reading from file $filename"

counter=0

while read -r line
do
	echo $line
	#continue

	cat unfao.files | grep $line > tmp
	#echo "cat unfao.files | grep $line > tmp"
	lines="$(wc -l tmp | sed -ne 's/ tmp//p')"
	if [ "$lines" = 0 ]; then
        	echo $line >> not.out
	else
        	echo "false"
	fi
	#echo "Moving on.."
#break
done < "$filename"

