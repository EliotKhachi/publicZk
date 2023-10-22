#!/bin/bash
for dir in $(ls); do 
    #echo $dir
    if [ -d $dir ]; then
        #images=$(sed -n '/!\[image\]/p' README.md)
        sed -n 's#!\[image\].*zettelimages/\(.*\))#!\[image\](./\1)#p' README.md # replace s3 bucket image link with local image link
        for image in $images; do
            #echo $image
            aws s3 cp s3://zettelimages/$(echo "$image" | sed -n 's/.*zettelimages\/\(.*\.png\))/\1/p') . # download s3 bucket image
        done
    fi
done
