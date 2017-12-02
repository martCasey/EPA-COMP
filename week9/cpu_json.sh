#!/bin/bash

#1. run mpstat for 10 seconds
mpstat 10 1 -o JSON | jq '.sysstat.hosts[0].statistics[0]'

#2. use pipe to jq to have identify the cpu-load value from mpstat

#3. use jq to subtract this number from 100 to obtain the utilization of the cpu



