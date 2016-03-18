#!/bin/bash

#USAGE: 
#	$1 = arn regex	(eg: ARN=\"QT)

for dir in /var/www/html/XML_Output/*/;do

	for d in $dir/*/; do
		#echo $d
		cat $d*.xml | grep $1 >> tmp
	done

	echo $dir
done

exit

for d in */ ; do

	cat $d*.xml | grep "$1" >> tmp

done
