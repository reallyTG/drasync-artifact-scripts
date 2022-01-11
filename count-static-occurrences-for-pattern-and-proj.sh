#!/bin/bash

projName=$1
pattern=$2

ag -v '/test/|col0|/out/|/dist/|/__test__/|/testing/|/tests/|/__tests__/|/examples/|/build/|/generated/' /home/evaluation/query-results/$pattern/$projName.csv | 
wc |
awk '{print $1}' |
xargs -I {} echo $projName $pattern {}