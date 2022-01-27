#!/bin/bash

projName=$1

cd /home/evaluation/case-studies/$projName

rm processed-results-*

ls results-* |
xargs -I {} node /home/drasync/ProfilingPromisesProcessing/packageResultsToJSON.js --resFile {} --pathTo /home/evaluation/case-studies/$projName/ --antipatterns /home/evaluation/processed-query-results/$projName.csv 

# Once that's done, tally up.
ls processed-results-* | 
xargs -I {} node /home/drasync/ProfilingPromisesProcessing/tallyAntipatternDynamicCounts.js --resFile {} --pathTo /home/evaluation/case-studies/$projName/ --antipatterns /home/evaluation/processed-query-results/$projName.csv --outFile {}.dynInv
