#!/bin/bash

uniq not.out > arns.unique

filename="arns.unique"

#TOREMOVE
filename="not.out"

filename="xs.missing"
counter=0

while read -r line
do

	counter=$((counter+1))
        #if [ "$counter" -le 172146 ]
        #then
        #        continue
        #fi

	#echo "Checking: ${line}"

	rdfs="rdf.files"

	while read -r rdffile
	do
		cat rdffiles.missing | grep ${rdffile} > tmp
		#echo "rdffiles.missing | grep ${rdffile}"
		found="$(wc -l tmp | sed -ne 's/ tmp//p')"

		#break

		if [ "$found" -ge 1 ]; then
			break
		fi

		cat ${rdffile} | grep ${line} > tmp

		#echo "cat ${rdffile} | grep ${line}"

		found="$(wc -l tmp  | sed -ne 's/ tmp//p')"

		#echo "FOUND: $found"

		if [ "$found" = 2 ]; then
			echo ${rdffile} >> rdffiles.missing.xs
			break
		fi
		#echo "checked: ${rdffile}"
	done < "$rdfs"
	#break
	echo "Checked arn: ${line}..Counter:${counter}"
done < "$filename"
