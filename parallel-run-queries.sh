#!/bin/bash

# note: `nohup ./parallel-run-queries.sh listOfProjNames.txt &` this for your own sake.

projNames=$1
query=$2

# 20 Jobs
jobs=4
# Log to parallel-make-databases.log
logname=parallel-run-queries.log
# Timeout 5 mins
timeout=360

parallel -j $jobs -a $projNames --joblog $logname --timeout $timeout ./run-query.sh {} $query

