#!/bin/bash

projName=$1
pattern=$2

cd /home/evaluation/case-studies/$1

find . -name '*.dynInv' | xargs -I {} ag $2 {} > $1-$2.txt