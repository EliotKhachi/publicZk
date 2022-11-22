#!/bin/bash

for x in $(ls); do
    cd $x
    touch .properties
    echo "public" > .properties
    cd ..
done
