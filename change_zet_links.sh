#!/bin/bash
for dir in $(ls | grep -vE "\.sh$|\.md$|\.json$"); do
    echo $dir
    cd $dir
    sed -n 's#\[.*\](.*tree/main/\(.*\))#(.\1#p' README.md # replace s3 bucket image link with local image link
    # Convert
    # [Software Architecture Layers](https://github.com/EliotKhachi//publicZk/tree/ma    in/202209172045)
    # to
    # [Software Architecture Layers](./202209172045)
    cd ..
done
