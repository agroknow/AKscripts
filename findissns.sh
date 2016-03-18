#!/bin/bash

grep -rnw '/home/agris/pm/testingStuff/exlibris/files/' -e "ISSN" > tmp2

sed -i 's/<ags:.*//g' tmp2
sed -i 's/:.*//g' tmp2


filename=tmp2

while read -r line
do
        cp ${line} ./fileswithissns/
done < "$filename"
