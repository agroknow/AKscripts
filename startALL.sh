#!/bin/bash

input=$1
output=$2

for D in `find $1 -type d`
do
	./convertRDF.sh ../work/AGRIS_ARN_ISSN.txt ../work/AGRIS_ISSN_URI.txt ../work/agrovocURILabelMappings.txt $D ${output} true
done
