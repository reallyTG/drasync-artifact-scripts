#!/bin/bash

# Make sure the paths line up.
caseStudiesPath=/home/evaluation/case-studies
dbTgtDir=/home/evaluation/QLDBs
projName=$1

# Create the DB.
codeql database create --language=javascript --source-root $caseStudiesPath/$1 $dbTgtDir/$1


