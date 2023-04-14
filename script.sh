#!/bin/bash
for dir in $(zet show programming | awk '{print $1}'); do
    # echo $dir
    sed -i 's/#programming/#programmingLanguages/' ./$dir/README.md
done
