#!/bin/bash

projName=$1

cd /home/evaluation/case-studies/$projName

# Once that's done, tally up.
ls processed-results-*.json | 
xargs -I {} node /home/drasync/ProfilingPromisesProcessing/tallyAntipatternDynamicCounts.js --resFile {} --pathTo /home/evaluation/case-studies/$projName/ --antipatterns /home/evaluation/processed-query-results/$projName.csv --outFile {}.dynInv