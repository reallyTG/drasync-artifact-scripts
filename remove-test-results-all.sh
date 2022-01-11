#!/bin/bash

find /home/evaluation/query-results -name '*.csv' |
xargs -I {} ./remove-query-results-in-test.sh {}