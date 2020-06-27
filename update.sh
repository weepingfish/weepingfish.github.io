#!/bin/sh

while true; do
    git fetch
    DIFF=$(git rev-list HEAD...origin/master --count)

	if [ $DIFF -gt 0 ]; then
		echo "Need to pull"
        git pull
        hexo clean
        hexo g
        hexo d

    else
        echo "Up-to-date"

    fi
    sleep 10
done
