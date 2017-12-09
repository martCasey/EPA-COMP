#!/bin/bash

#get rid of while loops
#Linux for loop
for i in {1..50};
do
#Run load test in background with a pararmeter no longer than 10
#loadtest runs forever
#Value i is the number of users on the system, 10 is the amount of time each load test will run for
./loadtest $i 10 &
#Collect and output CPU Utilization
#mpstat command runs for 10 seconds each, and generates 1 report every 10 seconds
idle=`mpstat -o JSON | jq '.sysstat.hosts[0].statistics[0]."cpu-load"[0].idle'`
cpuUT=`mpstat -o JSON | jq '100 - .sysstat.hosts[0].statistics[0]."cpu-load"[0].idle'`
	echo $cpuUT $i $idle >> datafile.dat
pkill loadtest
done

#Run load test in background with a pararmeter no longer than 10
#./loadtest $1 &

#sleep $2

#pkill will only be here temporarily
#pkill loadtest.C

#Linux for loop
#for i in {1..50}
#do
#do something here
#done
