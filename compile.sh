#!/bin/bash
cd Codes/
for i in $(ls -d */); do
	cd $i
	g++ roots.cpp -o roots
	g++ rootsGeneral.cpp -o general
	cd ..
done
