#!/bin/bash

projName=$1

# get all queries
find /home/drasync/ProfilingPromisesQueries -name '*.ql' | 
# get names only
xargs -I {} basename -s .ql {} |
# run the query
xargs -I {} ./run-query.sh $projName {}

./consolidate-query-results.sh $projName

