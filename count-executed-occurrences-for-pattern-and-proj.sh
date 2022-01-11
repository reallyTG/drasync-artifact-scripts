#!/bin/bash

projName=$1
pattern=$2

ag -o '".*"' /home/evaluation/collected-anti-patterns/$pattern/$projName*.txt |
ag -v 'test/|col0|out/|dist/|__test__/|testing/|tests/|__tests__/|examples/|/build/|/generated/' |
sort |
uniq | 
wc |
awk '{print $1}' |
xargs -I {} echo $projName $pattern {}