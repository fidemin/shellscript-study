#!/usr/local/bin/bash

#cd ~/Projects/WooYuMin

if [ -f "scripts.tar.gz" ]; then
	rm scripts.tar.gz
fi

tar c pass_wget.sh select.sh | pv | gzip > scripts.tar.gz
