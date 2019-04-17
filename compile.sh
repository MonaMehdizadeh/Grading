#!/bin/bash
source ./config.sh
cd $CODES_PATH
for i in $(ls -d */); do
	cd $i
	echo $i "start"
	rm run
	g++ *.cpp -o run
	echo $i "done"
	cd ..
done
