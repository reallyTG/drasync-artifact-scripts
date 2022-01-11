#!/bin/bash

queryName=$1

time ./run-query.sh appcenter-cli $queryName > /dev/null 2>&1
time ./run-query.sh Boostnote $queryName > /dev/null 2>&1
time ./run-query.sh browsertime $queryName > /dev/null 2>&1
time ./run-query.sh CodeceptJS $queryName > /dev/null 2>&1
time ./run-query.sh dash.js $queryName > /dev/null 2>&1
time ./run-query.sh eleventy $queryName > /dev/null 2>&1
time ./run-query.sh erpjs $queryName > /dev/null 2>&1
time ./run-query.sh fastify $queryName > /dev/null 2>&1
time ./run-query.sh flowcrypt-browser $queryName > /dev/null 2>&1
time ./run-query.sh media-stream-library-js $queryName > /dev/null 2>&1
time ./run-query.sh mercurius $queryName > /dev/null 2>&1
time ./run-query.sh netlify-cms $queryName > /dev/null 2>&1
time ./run-query.sh openapi-typescript-codegen $queryName > /dev/null 2>&1
time ./run-query.sh rmrk-tools $queryName > /dev/null 2>&1
time ./run-query.sh stencil $queryName > /dev/null 2>&1
time ./run-query.sh strapi $queryName > /dev/null 2>&1
time ./run-query.sh treeherder $queryName > /dev/null 2>&1
time ./run-query.sh ui5-builder $queryName > /dev/null 2>&1
time ./run-query.sh vscode-js-debug $queryName > /dev/null 2>&1
time ./run-query.sh vuepress $queryName > /dev/null 2>&1