#!/usr/local/bin/bash

DIR=/tmp

ls_home()
{
	local DIR
	DIR=~/$1
	echo "directory: $DIR"

	ls $DIR
}

ls_home Desktop

echo "directory: $DIR"
ls $DIR
