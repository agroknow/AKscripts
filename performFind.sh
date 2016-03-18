#!/bin/bash

echo "I am expected to run after ../findAllIdsRDF/findIDS script!"
filename="xmlFiles.in"

echo "Reading output file containing rdf files.."

while read -r line
do
	cat $line | grep $1 > tmp
	lines="$(wc -l tmp | sed -ne 's/ tmp//p')"

	if [ "$lines" -ge "1" ]
	then
                echo $line >> inFile.out
		echo "Found!"
        fi

done < "$filename"

echo "Done"
