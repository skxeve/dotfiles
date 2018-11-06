#!/bin/bash

for file in `find dots -type f`
do
    echo ========== $file ==========
    copy_to=~/$(basename $file)
    if [ -f $copy_to ]; then
        diff $copy_to $file
    fi
    echo cp -i $file $copy_to
    cp -i $file $copy_to
done
