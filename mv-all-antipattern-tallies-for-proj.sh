#!/bin/bash

projName=$1

cd /home/evaluation/case-studies/$projName

cp $projName-asyncFunctionNoAwait.txt /home/evaluation/collected-anti-patterns/AsyncFunctionNoAwait
cp $projName-awaitedReturnInAsyncFun.txt /home/evaluation/collected-anti-patterns/AwaitedReturnInAsyncFun
cp $projName-awaitInLoop.txt /home/evaluation/collected-anti-patterns/AwaitInLoop
cp $projName-explicitPromiseConstructor.txt /home/evaluation/collected-anti-patterns/ExplicitPromiseConstructor
cp $projName-inHousePromisification.txt /home/evaluation/collected-anti-patterns/InHousePromisification
cp $projName-promiseConstructorSyncResolve.txt /home/evaluation/collected-anti-patterns/PromiseConstructorSyncResolve
cp $projName-promiseResolveThen.txt /home/evaluation/collected-anti-patterns/PromiseResolveThen
cp $projName-reactionReturnsPromise.txt /home/evaluation/collected-anti-patterns/ReactionReturnsPromise