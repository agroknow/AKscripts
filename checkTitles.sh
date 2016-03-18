#!/bin/bash

for d in */ ; do

	cat $d*.xml | grep "<dc:title" > tmp

	sed -i 's/<!\[CDATA\[//g' tmp
	sed -i 's/\]\]>//g' tmp

	sed -i 's/\(.*\)<dc:title [^/]*>//g' tmp
	sed -i 's/<\/dc:title>//g' tmp
	sed -i 's/<dc:title>//g' tmp

	filename=tmp

	while read -r line
	do
		./agrisFAO.sh "${line}"
		#break
	done < "$filename"
done
