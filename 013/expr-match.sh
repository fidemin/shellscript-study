#!/usr/local/bin/bash

while read line
do
	href=$(expr "$line" : ".*href=[\"']\([^\"']*\)[\"'].*")
	if [ $? -eq 0 ]; then
		echo $href
	fi
done
