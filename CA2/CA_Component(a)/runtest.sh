#!/bin/bash

#Writes the headings of the 3 values to the file datafile.dat
echo "CO" "N" "Idle" > results.dat
#Linux for loop
for i in {1..150};
do
#Run load test in background
#loadtest runs forever
#Value i is the number of users on the system
./loadtest $i &
#Collect and output CPU Utilization
#mpstat command runs for 10 seconds each, and generates 1 report every 10 seconds
idle=`mpstat 10 1 -o JSON | jq '.sysstat.hosts[0].statistics[0]."cpu-load"[0].idle'`
#Read from the file synthetic.dat to get the CO
#The < ensures wc -l does not also print the name of the file
CO=`wc -l < ./synthetic.dat`
#Append the values to the file datafile.dat
	echo $CO $i $idle >> results.dat
#Kills loadtest
pkill loadtest
done
