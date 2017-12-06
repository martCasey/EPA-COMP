#!/bin/bash

#While loop to ensure parameter entered is not greater than 10
go=false;
while [[! $go]]
do
	if [ $1 -le 11 ]; then

  	go=true;

	fi
done

#Run load test in background with a pararmeter no longer than 10
./loadtest $1 &



#Linux for loop
#for i in {1..50}
#do
# do something here
#done
