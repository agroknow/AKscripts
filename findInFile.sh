#!/bin/bash

echo "I am expected to run after ../findAllIdsRDF/querySPARQL script!"
filename="not.out"

echo "Reading output file containing ids not found.."

while read -r line
do
	./performFind.sh $line
done < "$filename"

echo "Done"

