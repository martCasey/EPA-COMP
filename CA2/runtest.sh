#!/bin/bash

#While loop to ensure parameter entered is not greater than 10
go=false;
while [[! $go ]]
do
	if [ $1 -le 11 ]; then

  	go=true;

	fi
done

#Run load test in background with a pararmeter no longer than 10
./loadtest $1 &

#While loop to ensure number of users is no longer than 50
go2=false;

while [[! $go2 ]]
do
  	if [ $2 -le 51 ]; then

        go=true;

        fi
done


#Linux for loop
#for i in {1..50}
#do
# do something here
#done
