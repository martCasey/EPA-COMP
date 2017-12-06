#!/bin/bash

#Length load test must run for
#& is required to have a command run in the background
./loadtest $1 &

#Number of users for the load test
sleep $2


#loadtest termination
pkill loadtest.C

#Write a wrapper shell script that takes two parameters,
#the number of users to pass on to loadtest and the length in time to run the load test.
#The shell script then terminates the load test using pkill
