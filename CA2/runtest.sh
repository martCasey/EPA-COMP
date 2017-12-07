#!/bin/bash

#While loop to ensure cpu loadtest runs no longer than 10
go=false;
while [ $go = 'false' ]
do
	if [ $1 -le 11 ]; then

  	go=true;

	fi
done

#While loop to ensure first value in parameter range is no longer than 50
go2=false;

while [! $go2 ]
do
  	if [ $2 -le 51 ]; then

        go2=true;

        fi
done

#While loop to ensure second value in parameter range is no longer than 50
go3=false;

while [! $go3 ]
do
        if [ $3 -le 51 ]; then

        go3=true;

        fi
done

#Linux for loop
for i in {$2..$3};
do
#Run load test in background with a pararmeter no longer than 10
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
