#!/bin/bash

projNames=$1
pattern=$2

parallel -a $1 ./consolidate-dyn-inv.sh {} $2