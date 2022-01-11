#!/bin/bash

projName=$1

mkdir -p /home/evaluation/processed-results/$projName

fileNumber=0
for f in /home/evaluation/case-studies/$projName/processed-results-*; do
    new=$(printf "$projName-%02d.json" "$fileNumber") #02 pad to length of 2
    mv -i -- "$f" "/home/evaluation/processed-results/$projName/$new"
    let fileNumber=fileNumber+1
done