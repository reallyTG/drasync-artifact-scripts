#!/bin/bash

projName=$1

./count-executed-occurrences-for-pattern-and-proj.sh $projName AsyncFunctionNoAwait
./count-executed-occurrences-for-pattern-and-proj.sh $projName AwaitInLoop
./count-executed-occurrences-for-pattern-and-proj.sh $projName AwaitedReturnInAsyncFun
./count-executed-occurrences-for-pattern-and-proj.sh $projName ExplicitPromiseConstructor
./count-executed-occurrences-for-pattern-and-proj.sh $projName InHousePromisification
./count-executed-occurrences-for-pattern-and-proj.sh $projName PromiseResolveThen
./count-executed-occurrences-for-pattern-and-proj.sh $projName ReactionReturnsPromise
./count-executed-occurrences-for-pattern-and-proj.sh $projName PromiseConstructorSyncResolve