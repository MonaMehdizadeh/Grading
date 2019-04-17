#!/bin/bash
INPUT_PATH="/home/mona/Workspace/CMPT-129/Assignment1/marktests"
cd Codes/
for i in $(ls -d */); do
	cd $i
	for j in `seq 5 8`; do
		cp $INPUT_PATH/coefIn$j.txt .
	       	./general <  $INPUT_PATH/inCase$j.txt  > output/outCase$j.txt 2> output/errCase$j.txt
	done
	cd ..
done

