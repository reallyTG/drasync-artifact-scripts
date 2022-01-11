#!/bin/bash

projNames=$1

parallel -a $1 ./consolidate-dyn-inv.sh {} asyncFunctionNoAwait 
parallel -a $1 ./consolidate-dyn-inv.sh {} awaitedReturnInAsyncFun 
parallel -a $1 ./consolidate-dyn-inv.sh {} awaitInLoop 
parallel -a $1 ./consolidate-dyn-inv.sh {} explicitPromiseConstructor 
parallel -a $1 ./consolidate-dyn-inv.sh {} inHousePromisification 
parallel -a $1 ./consolidate-dyn-inv.sh {} promiseConstructorSyncResolve 
parallel -a $1 ./consolidate-dyn-inv.sh {} promiseResolveThen 
parallel -a $1 ./consolidate-dyn-inv.sh {} reactionReturnsPromise 