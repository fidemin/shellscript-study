#!/usr/local/bin/bash

# -a 옵션이 있는지 플래그 변수 a_flag와
# -p 옵션의 구분자를 넣어보기

a_flag=0
separator=""
exculde=""

while getopts "ap:v:" option 2>/dev/null
do
	case $option in
		a) 
			a_flag=1
			;;
		p)
			separator="$OPTARG"
			;;
		v)
			exclude="$OPTARG"
			;;
			
		\?)
			echo "[error] wrong arguments" 1>&2
			echo "Usage: getopts.sh [-a] [-p separator] target_dir" 1>&2
			exit 1
			;;
	esac
done

shift $(expr $OPTIND - 1) # 위치 파라미터 변경. $1은 이제 target_dir이 된다. 외워라.
path="$1"
if [ -z "$path" ]; then
path="."
fi

if [ $a_flag -eq 1 ]; then
	ls -al -- "$path" | grep -v "$exclude"
else
	ls -l -- "$path" | grep -v "$exclude"
fi

if [ -n "$separator" ]; then
	echo "$separator"
fi	
