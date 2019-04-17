#!/bin/bash
source ./config.sh
cd $CODES_PATH
for i in $(ls -d */); do
	cd $i
	echo $i "start"
	rm -rf output
	rm -rf pics
	mkdir output
	./run > output/outCase.txt 2> output/errCase.txt
	mkdir pics
	mv *.bmp pics/
	echo $i "done"
	cd ..
done

