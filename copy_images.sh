#!/bin/bash

for dir in $(ls); do
    if [ -d "$dir" ]; then
        targetdir="$REPOS/eliotkhachi.dev/resources/zettel-images/$dir"
        #mkdir $targetdir
        for image in $(ls $dir | grep *.png); do
            echo $dir
            #cp "./$dir/$image" "$targetdir"
        done
    fi
done
