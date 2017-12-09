#!/bin/bash
#100 - below
#1. run mpstat for 10 seconds
mpstat -o JSON | jq '.sysstat.hosts[0].statistics[0]."cpu-load"[0].idle'

#2. use pipe to jq to have identify the cpu-load value from mpstat

#3. use jq to subtract this number from 100 to obtain the utilization of the cpu

