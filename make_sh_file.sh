#!/usr/local/bin/bash

# create file with filename

filename=$1
if [ -z "$1" ]; then
	echo "Error: filename should be given" 1>&2
	echo "[Usage] ./make_sh_file.sh {filename}" 1>&2
	exit 1
fi

if [ -f "$filename" ]; then
	echo "Error: The file \"$filename\" already exists" 1>&2
	exit 1
fi

echo "#!$(which bash)" > $filename
chmod +x $filename
echo "$filename file is created"
