#!/bin/bash

projName=$1

./count-dynamic-occurrences-for-pattern-and-proj.sh $projName AsyncFunctionNoAwait
./count-dynamic-occurrences-for-pattern-and-proj.sh $projName AwaitInLoop
./count-dynamic-occurrences-for-pattern-and-proj.sh $projName AwaitedReturnInAsyncFun
./count-dynamic-occurrences-for-pattern-and-proj.sh $projName ExplicitPromiseConstructor
./count-dynamic-occurrences-for-pattern-and-proj.sh $projName InHousePromisification
./count-dynamic-occurrences-for-pattern-and-proj.sh $projName PromiseResolveThen
./count-dynamic-occurrences-for-pattern-and-proj.sh $projName ReactionReturnsPromise
./count-dynamic-occurrences-for-pattern-and-proj.sh $projName PromiseConstructorSyncResolve