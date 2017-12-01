#!/bin/bash

cnt =`ls /tmp | wc -l`
if [ $cnt -gn ls $maxnum ];
then
	echo "`date` Max number of files ($cnt) exceeded in /tmp >> home/epa/log.txt"
fi


