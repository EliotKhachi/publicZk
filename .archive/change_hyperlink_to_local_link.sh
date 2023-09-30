#!/bin/bash

for dir in $(ls | grep -vE "\.sh$|\.md$|\.json$"); do
    echo $dir
    cd $dir
    sed -i 's/(\(\.\/202.*)\)/(.\1/g' README.md # changes hyperlinks to local zettel links
    # sed -i 's#\[\(.*\)\](.*tree/main/\(.*\))#\[\1\](../\2)#g' README.md # changes hyperlinks to local zettel links
    cd ..
done
