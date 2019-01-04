#!/usr/local/bin/bash

count=0
trap '
	echo
	echo "Try count: $count"
	exit
	' INT #SIGINT (Ctrl + c) 시그날을 받았을 때, ' ' 내의 명령을 실행
	# exit 이 안들어가면, SIGINT로 종료되지 않는다.

while :
do
	curl -o /dev/null $1
	count=$(expr $count + 1)
	sleep 2
done

