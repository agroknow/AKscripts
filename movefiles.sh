#!/bin/bash

filename=tmp

while read -r line
do
	cp ${line} ./files/
done < "$filename"

