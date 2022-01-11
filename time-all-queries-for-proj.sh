#!/bin/bash

projName=$1

echo findAsyncFunctionNoAwait
time ./run-query.sh $projName findAsyncFunctionNoAwait > /dev/null 2>&1
sleep 2

echo findAwaitInLoop
time ./run-query.sh $projName findAwaitInLoop > /dev/null 2>&1
sleep 2

echo findAwaitReturnInAsync
time ./run-query.sh $projName findAwaitReturnInAsync > /dev/null 2>&1
sleep 2

echo findExplicitConstructor
time ./run-query.sh $projName findExplicitConstructor > /dev/null 2>&1
sleep 2

echo findInHousePromisification
time ./run-query.sh $projName findInHousePromisification > /dev/null 2>&1
sleep 2

echo findPromiseResolveThen
time ./run-query.sh $projName findPromiseResolveThen > /dev/null 2>&1
sleep 2

echo findReactionReturningPromise
time ./run-query.sh $projName findReactionReturningPromise > /dev/null 2>&1
sleep 2

echo findSyncResolve
time ./run-query.sh $projName findSyncResolve > /dev/null 2>&1