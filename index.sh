#!/bin/bash

content="$(cat 4642.json)"

#echo ${content}
echo "curl -XPUT 'http://localhost:9201/akif/akif/46900' -d '${content}'"

