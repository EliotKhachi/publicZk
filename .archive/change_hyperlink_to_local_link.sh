#!/bin/bash

for dir in $(ls | grep -vE "\.sh$|\.md$|\.json$"); do
    input_file="$dir/README.md"
    sed -i 's#<a href="\.\./\([0-9]\{12\}\)$">#<a href="\./\1">#g' $output_file # fixes html links (../202*/zettel.html to ./202*.html)
    # sed -i 's#\[\(.*\)\](.*tree/main/\(.*\))#\[\1\](../\2)#g' $input_file # changes hyperlinks to local zettel links (https://github.com/... --> ../202*
done
