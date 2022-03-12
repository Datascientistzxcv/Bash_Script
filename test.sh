#!/usr/bin/env bash

for f in find ./*/*; do
    if [ -d "$f" ]; then
    	echo "$f"
        #cat "$f"/* | grep "import" >> "$f"/requirements.txt
        cat "$f"/*.py | awk '/import/ {print $2 }' >"$f"/requirements.txt	
    fi
done
