#!/bin/bash

echo "Expected to be run after findIDS script!"
filename="idsInRDF.out"
echo "Reading from file $filename"

line=$1


	queryENC="SELECT%20%3Ft%20WHERE%20%7B%20%3Chttp://agris.fao.org/aos/records/$line%3E%20dct:title%20%3Ft%20%7D"
	qURL="http://202.45.139.84:10035/catalogs/fao/repositories/agris?query=$queryENC"

	echo "Fetching...$counter"
	curl -H "Accept: application/sparql-results+xml" $qURL > tmp
	lines="$(wc -l tmp | sed -ne 's/ tmp//p')"
	if [ "$lines" = 8 ]; then
        	echo $line >> not.new.out
	else
        	echo "false"
	fi
	echo "Moving on.."
