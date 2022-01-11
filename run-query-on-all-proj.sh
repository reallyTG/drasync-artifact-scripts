#!/bin/bash

projNames=$1
query=$2

parallel -j10 -a $1 ./run-query.sh {} $2

parallel -j10 -a $1 ./consolidate-query-results.sh {}