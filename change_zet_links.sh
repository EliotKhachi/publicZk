#!/bin/bash
for dir in $(ls | grep -vE "\.sh$|\.md$|\.json$"); do
    echo $dir
    cd $dir
    sed -n 's#\[\(.*\)\](.*tree/main/\(.*\))#\[\1\](./\2)#p' README.md # changes hyperlinks to local zettel links
    cd ..
done
