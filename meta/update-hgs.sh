#!/bin/bash
CURDIR=$(python -c "import os.path, sys; print os.path.split(sys.argv[1])[1]" `pwd`)
if [ $CURDIR = "meta" ]; then
        cd ..
        echo "About to run hg fetch in all nmag-repositories"
	echo "(you may need to enable hg's fetch extension in your .hgrc)"
	echo "Starting with nmag-src..."
	cd src; 
	hg fetch;
	cd ..
	echo "Then nmag-test..."
	cd test; 
	hg fetch;
	cd ..
	echo "Then nmag-doc..."
	cd doc; 
	hg fetch;
	cd ..
	echo "Then nmag-dist..."
	cd dist; 
	hg fetch;
	cd ..
	#echo "Then nmag-www..."
	#hg clone ssh://hg@bitbucket.org/fangohr/nmag-www www
	
	#if you haven't got the ssh key, then change the clone
	#commands to something like
	#hg clone https://fangohr@bitbucket.org/fangohr/nmag-src src
	cd meta
	echo "Updating (using fetch) done."
else
        echo "Need to execute this script from inside the 'meta' subdirectory."
	echo "Stopping here."
fi

