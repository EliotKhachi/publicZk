#!/bin/bash

TARGETDIR="../resources/zettel-images"
for html_file in $(ls | grep .html); do
    sed -i "s#<img src=\"./\(.*\).png\" alt=\"image\" />#<img src=\"$TARGETDIR/${html_file%.html}/\1.png\" alt=\"image\" \>#g" ./$html_file
done
