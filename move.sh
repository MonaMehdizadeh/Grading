#!/bin/bash
source ./config.sh
cd $CODES_PATH
for i in $(ls -d */); do
	cd $i
	cp $SOLUTION_PATH/*.cpp .
	cp $SOLUTION_PATH/*.h .
	cd ..
done
