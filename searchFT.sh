#!/bin/bash

echo "Expecting to run after population of RDF files locations, expects 1 parameter to be the free text"

filename="../findAllIdsRDF/XMLFiles.out"


while read -r line
do
        cat $line | grep "*http://www.mpi.govt.nz*" >> output.out
        #echo "cat $line | grep \"<ags:resource ags:ARN=\" >> idsInXML.out"
done < "$filename"

