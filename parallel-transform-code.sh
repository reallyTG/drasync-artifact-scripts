#!/bin/bash

# note: `nohup ./parallel-transform-code.sh listOfProjNames.txt transformationName &` this for your own sake.

projNames=$1
transformation=$2

# 20 Jobs
jobs=20
# Log to parallel-make-databases.log
logname=parallel-transform-code.log
# Timeout 30 mins
timeout=1800

parallel -j $jobs -a $projNames --joblog $logname --timeout $timeout /home/evaluation/drasync-artifact-scripts/transform-code-in-project.sh $transformation {}

