#!/bin/bash

cd dots
echo ---------- dir ----------
for dir in `(find . -type d)`
do
    if [ "$dir" == "." ]; then
        continue
    fi
    echo mkdir -p ~/$dir
    mkdir -p ~/$dir
done

echo ---------- file ----------
for file in `find . -type f`
do
    echo ========== $file ==========
    copy_to=~/$file
    if [ -f $copy_to ]; then
        diff $copy_to $file
        if [[ $? == 0 ]]; then
            echo no diff.
            continue
        fi
    fi
    echo cp -i $file $copy_to
    cp -i $file $copy_to
done
