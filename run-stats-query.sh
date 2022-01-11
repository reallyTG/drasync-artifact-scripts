#!/bin/bash

# Inputs
# Note: make sure query is in the correct location.

projName=$1

# Constants
QLDBs=/data/evaluation/QLDBs
Results=/data/evaluation/proj-stats

mkdir -p $Results

codeql query run --database $QLDBs/${projName} --output=$Results/${projName}_tempOut.bqrs /data/drasync/ProfilingPromisesQueries/getStats.ql
codeql bqrs decode --format=csv $Results/${projName}_tempOut.bqrs > $Results/${projName}.csv
rm $Results/${projName}_tempOut.bqrs
