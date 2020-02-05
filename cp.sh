#!/bin/bash
source ./config.sh
cd $CODES_PATH
for i in $(ls -d */); do
	cd $i
	echo $i "start"
	cp $TEST_PATH/* .
	echo $i "done"
	cd ..
done
