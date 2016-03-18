#!/bin/bash

# $1 = SETNAME
# $2 = ARN

find / -name "*$1*xml*" > outputXML

filename="outputXML"

while read -r line
do
	#echo "Read: $line"
	echo "cat on $line" >> findInXML
	cat $line | grep $2 >> findInXML
	echo "cat $line | grep $2 > findInXML"
done < "$filename"
