#!/bin/bash

cd /home/manju/work/hulk

for num in `ls m5out/`
do
	sum=0.0
	for val in `grep "avg_L1_missPenalty" m5out/$num/64-core/stats.txt | head -n 64 | tr -s ' ' | cut -d ' ' -f 2`
	do
		sum=`echo $sum + $val | bc`
	done
	echo "$num,$sum" >> avg_L1_missPenalty_64.csv
done