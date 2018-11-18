#!/bin/bash

for file in `find dots -type f`
do
    echo ========== $file ==========
    copy_to=~/$(basename $file)
    if [ -f $copy_to ]; then
        diff $copy_to $file
        if [[ $? == 0 ]]; then
            echo no diff.
            continue
        fi
    fi
    echo cp $copy_to $file
    cp $copy_to $file
done
