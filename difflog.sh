#!/bin/sh

DIR32=log1-32
DIR64=log1-64

for i in $DIR32/*; do
    proj="$(basename $i)"
    echo $proj
    # ignore paths
    diff -I /$proj/ ${DIR32}/$proj/*/temp/log.do_compile $DIR64/$proj/*/temp/log.do_compile  > diff1/$proj.diff
done
