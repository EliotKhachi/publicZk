#!/bin/bash

## CREATE REGISTRY
OPTION=$ZETDIR
cd $OPTION
# remove current registry and zettels.json
rm REGISTRY.md zettels.json
registry=()
# Loop through each zettel directory
for dir in $(ls); do
  if [ -d "$dir" ]; then
    readme="$dir/README.md"
    if [ -f "$readme" ]; then
        # get last line. Clean if no tags exist (remove "## Tags")
        tags=$(tail -n 1 "$dir/README.md" |sed 's/## Tags//g')
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
new_registry="./REGISTRY.md"
# touch $new_registry
# Print the unique tags
for tag in "${sorted_registry[@]}"; do
    echo "1. $tag" >> $new_registry
done

## CREATE ZETTELS.JSON
# Initialize an empty array to store zettel data
zettels=()

# Loop through each zettel directory
for dir in $(ls); do
  if [ -d "$dir" ]; then
    # Get the zettel ID from the directory name
    id=$dir


    title=$(head -n 1 "$dir/README.md" | sed 's/# //g' | sed 's/\(.*\)/"\1"/g');
    ## Extract tags and store them in array ##
    # In this order: read the last line of the README.md file, remove "## Tags" (in case there are no tags in this zettel), remove #s, capture each group of characters other than spaces ( \([^ ]\+\) ) and encase them with quotes, and replace spaces with commas.
    tags=$(tail -n 1 "$dir/README.md" | sed 's/## Tags//g' | sed 's/#//g' | sed 's/\([^ ]\+\)/"\1"/g' | sed 's/ /,/g')

    # Add zettel data to the array
    zettel_data="{\"title\": $title, \"id\": $id, \"tags\": [${tags[*]}]}"
    zettels+=("$zettel_data") # replace every ,] (invalid json) with ] (
  fi
done

# Join the zettel data array elements with commas
IFS=, zettels_json="${zettels[*]}"

# Get tags from registry
tags=$(sed 's/1\. #\(.*\)$/"#\1"/g' REGISTRY.md | sed ':a;N;$!ba;s/\n/,/g')

# Create the JSON output
json_output="{\"zettels\": [$zettels_json], \"registry\": [$tags]}"

# Write the JSON output to a file (while removing anything that makes jsons invalid, i.e. ,] and ,}
echo "$json_output" | sed 's#,\]#\]#g' | sed 's#,}#}#g' > zettels.json

echo "JSON data saved to zettels.json"
