#!/bin/bash

filename=sorted.not

while read -r line
do
	#break
	url="http://agris.fao.org/agris-search/search.do?recordID=$line"

        curl ${url} > tmp
        lines="$(cat tmp | grep 404 | wc -l)"

	echo ${lines}

        if [ "$lines" = 1 ]; then
                echo $line >> not.fao.out
        else
                echo "false"
        fi

	#break

done < "$filename"

