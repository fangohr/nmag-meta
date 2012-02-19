#!/bin/bash
CURDIR=$(python -c "import os.path, sys; print os.path.split(sys.argv[1])[1]" `pwd`)
if [ $CURDIR = "meta" ]; then
        cd ..
        echo "About to clone all nmag-repositories from bitbucket"
	echo "Assume that you have your ssh key uploaded."
	echo "This may take some time, please be patient."
	echo "Starting with nmag-src..."
	hg clone ssh://hg@bitbucket.org/fangohr/nmag-src src
	echo "Then nmag-test..."
	hg clone ssh://hg@bitbucket.org/fangohr/nmag-test test
	echo "Then nmag-doc..."
	hg clone ssh://hg@bitbucket.org/fangohr/nmag-doc doc
	echo "Then nmag-dist..."
	hg clone ssh://hg@bitbucket.org/fangohr/nmag-dist dist
	echo "Then nmag-www..."
	hg clone ssh://hg@bitbucket.org/fangohr/nmag-www www
	
	#if you haven't got the ssh key, then change the clone
	#commands to something like
	#hg clone https://fangohr@bitbucket.org/fangohr/nmag-src src
	cd meta
	echo "Cloning done."
else
        echo "Need to execute this script from inside the 'meta' subdirectory."
	echo "Stopping here."
fi

