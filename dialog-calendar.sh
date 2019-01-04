#!/usr/local/bin/bash

touch app_log.20190104 2>/dev/null

dialog --calendar "Select Date" 2 60 2019 1 4 2> date.tmp
clear

date_str=$(awk -F / '{print $3$2$1}' date.tmp)
echo $date_str

if [ -z "$date_str" ]; then
	rm -f date.tmp
	exit
fi

rm -i app_log.20190104

rm -f date.tmp
