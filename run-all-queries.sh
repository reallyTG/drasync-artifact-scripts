#!/bin/bash

projNames=$1

parallel -j10 -a $projNames ./run-all-queries-for-proj.sh {}

