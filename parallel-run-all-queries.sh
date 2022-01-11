#!/bin/bash

# note: `nohup ./parallel-run-queries.sh listOfProjNames.txt &` this for your own sake.

projNames=$1

# 20 Jobs
jobs=4
# Log to parallel-make-databases.log
logname=parallel-run-all-queries.log
# Timeout 5 mins
timeout=360

parallel -j $jobs -a $projNames --joblog $logname --timeout $timeout ./run-all-queries-for-proj.sh {}

