#!/bin/bash

registry=()
# Loop through each zettel directory
for dir in $(ls); do
  if [ -d "$dir" ]; then
    readme="$dir/README.md"
    if [ -f "$readme" ]; then
        # get last line. Clean if no tags exist (remove " Tags")
        tags=$(tail -n 1 "$dir/README.md" |sed 's/ Tags//g') 
        # echo $tags
        for tag in $tags; do
            # if tag doesn't exist in the registry, add it
            if [[ ! " ${registry[*]} " =~ " $tag " ]]; then 
                registry+=("$tag")
            fi
        done
    fi
  fi
done

sorted_registry=($(for tag in "${registry[@]}"; do echo "$tag"; done | sort))
new_registry="./NEW_REGISTRY.md"
# touch $new_registry
# Print the unique tags
for tag in "${sorted_registry[@]}"; do
    echo "1. $tag" >> $new_registry
done
