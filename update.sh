#!/bin/sh

while true; do
    DIFF=$(git rev-list HEAD...origin/master --count)

	if [ $DIFF > 0 ]; then
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
