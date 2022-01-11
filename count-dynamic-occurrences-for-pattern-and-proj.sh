#!/bin/bash

projName=$1
pattern=$2

ag -v 'test/|col0|out/|dist/|__test__/|testing/|tests/|__tests__/|examples/|build/|generated/' /home/evaluation/collected-anti-patterns/$pattern/$projName*.txt | 
sed 's/,$//' | 
awk '{sum+=$4} END {print NR, sum}' |
xargs -I {} echo $projName $pattern {}