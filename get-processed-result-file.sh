#!/bin/bash

projName=$1
tgtDir=/home/evaluation/collected-results

mkdir $tgtDir/$projName

find /home/evaluation/case-studies/$projName/ -name 'processed-results-*.json' | xargs -I {} cp {} $tgtDir/$projName
