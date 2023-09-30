#!/bin/bash

sed -n 's/\(.\/202.*)\)/.\1/p' 202309152346/README.md # changes hyperlinks to local zettel links
# for dir in $(ls | grep -vE "\.sh$|\.md$|\.json$"); do
#     echo $dir
#     cd $dir
#     # sed -i 's#\[\(.*\)\](.*tree/main/\(.*\))#\[\1\](../\2)#g' README.md # changes hyperlinks to local zettel links
#     cd ..
# done
