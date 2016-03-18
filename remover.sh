#!/bin/bash

#echo "Expected to be run after findIDS script!"
filename="unfao.me"
#echo "Reading from file $filename"

counter=0

while read -r line
do
	echo $line
	rm XF0/$line.xml
done < "$filename"

