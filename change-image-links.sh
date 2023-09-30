#!/bin/bash
for dir in $(ls | grep -vE "\.sh$|\.md$|\.json$"); do
    echo $dir
    cd $dir
    ls
    cd ..
done
