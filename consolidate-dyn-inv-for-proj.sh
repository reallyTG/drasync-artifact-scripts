#!/bin/bash

projName=$1

cd /home/evaluation/case-studies/$1

find . -name '*.dynInv' | xargs -I {} ag 'asyncFunctionNoAwait' {} > $1-asyncFunctionNoAwait.txt
find . -name '*.dynInv' | xargs -I {} ag 'awaitedReturnInAsyncFun' {} > $1-awaitedReturnInAsyncFun.txt
find . -name '*.dynInv' | xargs -I {} ag 'awaitInLoop' {} > $1-awaitInLoop.txt
find . -name '*.dynInv' | xargs -I {} ag 'explicitPromiseConstructor' {} > $1-explicitPromiseConstructor.txt
find . -name '*.dynInv' | xargs -I {} ag 'inHousePromisification' {} > $1-inHousePromisification.txt
find . -name '*.dynInv' | xargs -I {} ag 'promiseConstructorSyncResolve' {} > $1-promiseConstructorSyncResolve.txt
find . -name '*.dynInv' | xargs -I {} ag 'promiseResolveThen' {} > $1-promiseResolveThen.txt
find . -name '*.dynInv' | xargs -I {} ag 'reactionReturnsPromise' {} > $1-reactionReturnsPromise.txt
