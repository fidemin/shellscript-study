#!/usr/local/bin/bash


if [ -z ${TMPDIR1:+1} ]
then
	echo "TMPDIR1 is not set. file will be copied to /tmp"
fi

cp largefile.tar.gz ${TMPDIR1:=/tmp}
#cp largefile.tar.gz ${TMPDIR1:-/tmp}
#cp largefile.tar.gz ${TMPDIR1:?"no variable"}
cd $TMPDIR1

tar xzf largefile.tar.gz


echo "Extract files to $TMPDIR1"
