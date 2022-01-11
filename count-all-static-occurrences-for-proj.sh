#!/bin/bash

projName=$1

./count-static-occurrences-for-pattern-and-proj.sh $projName findAsyncFunctionNoAwait
./count-static-occurrences-for-pattern-and-proj.sh $projName findAwaitInLoop
./count-static-occurrences-for-pattern-and-proj.sh $projName findAwaitReturnInAsync
./count-static-occurrences-for-pattern-and-proj.sh $projName findExplicitConstructor
./count-static-occurrences-for-pattern-and-proj.sh $projName findInHousePromisification
./count-static-occurrences-for-pattern-and-proj.sh $projName findPromiseResolveThen
./count-static-occurrences-for-pattern-and-proj.sh $projName findReactionReturningPromise
./count-static-occurrences-for-pattern-and-proj.sh $projName findSyncResolve