#!/bin/bash

projName=$1

find /home/evaluation/query-results/ -name $projName* | 
xargs -I {} wc {} | 
awk '{sum+=$1} END {print sum}' |
xargs -I {} echo $projName {}