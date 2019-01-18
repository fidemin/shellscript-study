#!/usr/local/bin/bash

if [ -f "scripts.tar.gz" ]; then
	rm scripts.tar.gz
fi

# pv 에서 -L 1m 은 초당 1m씩 데이터를 이동시킨다는 뜻이다. 데이터 이동 속도를 제한하는데 쓰인다. (프로세스에 영향이 가지 않도록)
tar c pass_wget.sh select.sh | pv -L 1m | gzip > scripts.tar.gz
