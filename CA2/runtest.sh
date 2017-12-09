#!/bin/bash

#get rid of while loops
#Linux for loop
for i in {$2..$3};
do
#Run load test in background with a pararmeter no longer than 10
#loadtest runs forever
./loadtest $1 &
#Collect and output CPU Utilization
mpstat -o JSON | jq - "CPU"
done


#Collect and output CPU Utilization
#mpstat -o JSON | jq - "CPU"

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
