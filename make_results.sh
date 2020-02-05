#!/bin/bash
source ./config.sh
cd $CODES_PATH
for i in $(ls -d */); do
	cd $i
	echo $i "start"
	if test -f "run"; then
	   ./run > $RESULTS_PATH/$(basename $i).txt
	else
	    echo "Not compiled" > $RESULTS_PATH/$(basename $i).txt
	fi
	echo $i "done"
	cd ..
done
