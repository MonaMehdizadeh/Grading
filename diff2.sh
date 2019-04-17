#!/bin/bash
INPUT_PATH="/home/mona/Workspace/CMPT-129/Assignment1/marktests"
cd Codes/
for i in $(ls -d */); do
	cd $i
	echo $i
	for j in `seq 4 8`; do
		echo Test Case $j
		if diff -Bw $INPUT_PATH/CLout$j.txt output/outCase$j.txt >/dev/null; then
			echo CORRECT
		else
			echo ERROR
			diff -w $INPUT_PATH/CLout$j.txt output/outCase$j.txt 
		fi
		if diff -Bw $INPUT_PATH/outCase$j.txt outCase$j.txt >/dev/null; then
			echo CORRECT
		else
			echo ERROR
		fi
	done
	cd ..
done

