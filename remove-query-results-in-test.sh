#!/bin/bash

filePath=$1

ag -v -o '.*test.*' $filePath > $filePath-no-test
mv $filePath-no-test $filePath
rm $filePath-no-test