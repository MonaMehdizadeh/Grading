#!/bin/bash
INPUT_PATH="/home/mona/Workspace/CMPT-129/Assignment1/marktests"
cd Codes/
for i in $(ls -d */); do
	cd $i
	mkdir output
	for j in `seq 1 4`; do
	       	./roots < $INPUT_PATH/inCase$j.txt > output/outCase$j.txt 2> output/errCase$j.txt
	done
	cd ..
done

