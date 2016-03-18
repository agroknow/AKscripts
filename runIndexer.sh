#!/bin/bash

cd /home/agris/agris_app/agris_2/scripts/applications/
for D in BRN CN2 EE1 FI0 IN0 IN5 IR0 IR4 PH0 QG0 RU1 RU3 RUA RUG RUH RUI RUK RUM RUP RUS RUT RUX SK0 TR0 US0 US6
do
	./indexer.sh /var/www/XML_OUTPUT/2016/$D
done
cd /home/agris/pm/indexing
