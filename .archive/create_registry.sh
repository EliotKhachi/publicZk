#!/bin/bash

# Loop through each zettel directory
for dir in $(ls); do
  if [ -d "$dir" ]; then
    # Get the zettel ID from the directory name
    id=$dir

    tags=$(tail -n 1 "$dir/README.md" |sed 's/ Tags//g' | sed 's/\([^ ]\+\)/"\1"/g' | sed 's/ /,/g')

# Get tags from registry
tags=$(sed 's/1\. #\(.*\)$/"#\1"/g' REGISTRY.md | sed ':a;N;$!ba;s/\n/,/g')

echo "Tags data saved to REGISTRY.md"
