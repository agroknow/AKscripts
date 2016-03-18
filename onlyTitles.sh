#!/bin/bash

cat IR2015.rdf | grep "<dct:title xml:lang=\"eng\">" > tmp

sed -i 's/\t<dct:title xml:lang="eng"><!\[CDATA\[//g' tmp
sed -i 's/\]\]><\/dct:title>//g' tmp
exit


sed -i 's/\t<dct:title><!\[CDATA\[//g' tmp

sed -i 's/<dct:title xml:lang="eng">//g' tmp

sed -i 's/\]\]><\/dct:title>//g' tmp

sed -i 's/<dct:isPartOf><bibo:Journal><dct:title><!\[CDATA\[//g' tmp
sed -i 's/<bibo:presentedAt><bibo:Conference><dct:title><!\[CDATA\[//g' tmp

sed -i 's/<\/bibo:Journal><\/dct:isPartOf>//g' tmp
sed -i 's/<\/bibo:Conference><\/bibo:presentedAt>//g' tmp

sed -i 's/\t//g' tmp
