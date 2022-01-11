#!/bin/bash

# note: `nohup ./parallel-make-databases.sh listOfProjNames.txt &` this for your own sake.

projNames=$1

# 20 Jobs
jobs=2
# Log to parallel-make-databases.log
logname=parallel-make-databases.log
# Timeout 1 hr
timeout=3600

parallel -j $jobs -a $projNames --joblog $logname --timeout $timeout ./make-database.sh {}

