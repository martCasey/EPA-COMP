#!/bin/bash
#variables
read instance
#compare varibles
if [ -n "$instance" ];
#After if condition is true, move to then segment
then
	echo "Can you see the text? " $instance
#If condition is false, move to else segment
else
	echo "Are you just stupid? " $instance
#fi is how to close an if statement in a bash script
fi
