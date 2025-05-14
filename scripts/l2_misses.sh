#!/bin/bash

cd /home/manju/work/hulk

for num in `ls m5out/`
do
	sum=0.0
	for val in `grep "L2cache.demand_misses" m5out/$num/64-core/stats.txt | head -n 64 | tr -s ' ' | cut -d ' ' -f 2`
	do
		sum=`echo $sum + $val | bc`
	done
	echo "$num,$sum" >> L2cache_demand_misses_64.csv
done