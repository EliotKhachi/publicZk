#!/bin/bash
for dir in $(ls | grep -vE "\.sh$|\.md$|\.json$"); do
    echo $dir
    cd $dir
    # images=$(sed -n '/!\[image\]/p' README.md)
    sed -n 's/^\[!image\].*zettelimages\/\(.*\.png\))/\1/p' README.md
    # for image in $images; do
    #     # echo $image
    #     aws s3 cp s3://zettelimages/$(echo "$image" | sed -n 's/.*zettelimages\/\(.*\.png\))/\1/p') .
    # done
    cd ..
done
