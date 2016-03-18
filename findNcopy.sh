#!/bin/bash

echo "Run me as sudo"

find / -name "NZ*.xml" >> NZxmls.output

filename="NZxmls.output"


while read -r line
do
	cp $line ./
        #cat $line | grep "*http://www.mpi.govt.nz*" >> output.out
        #echo "cat $line | grep \"<ags:resource ags:ARN=\" >> idsInXML.out"
done < "$filename"
