#!/bin/bash

projName=$1

# Go to CaseStudies
cd /home/evaluation/case-studies

# Go to project directory.
cd $projName

# Install.
npm install

# Instrument tests.
/home/drasync/ProfilingPromisesAnalysis/async-hooks-interceptor/instrument npm run test

# Process results.
ls results-* | xargs -I {} node /home/drasync/ProfilingPromisesProcessing/packageResultsToJSON.js --resFile {} --pathTo /home/evaluation/case-studies/$projName/

# Done.
