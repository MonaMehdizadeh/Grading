#!/bin/bash
source ./config.sh
cd $CODES_PATH
for i in $(ls -d */); do
	cd $i
	cd pics
	echo $i "start"
	compare triangleTest.bmp $SOLUTION_PATH/pics/triangleTest.bmp -compose src diff1.png
	compare triangleTestOut.bmp $SOLUTION_PATH/pics/triangleTestOut.bmp -compose src diff2.png
	compare GasketConstructors.bmp $SOLUTION_PATH/pics/GasketConstructors.bmp -compose src diff3.png
	compare GasketMutators.bmp $SOLUTION_PATH/pics/GasketMutators.bmp -compose src diff4.png
	echo $i "done"
	cd ../..
done

