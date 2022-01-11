#!/bin/bash

projName=$1

cd /home/evaluation/query-results

rm /home/evaluation/processed-query-results/$1.csv

find . -name $projName.csv | xargs -I {} cat {} > /home/evaluation/processed-query-results/$1.csv

# There used to be a cd back to scripts here, do we need it?
