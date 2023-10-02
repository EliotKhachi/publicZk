#!/bin/bash

# Initialize an empty array to store zettel data
zettels=()

# Loop through each zettel directory
for dir in $(ls); do
  if [ -d "$dir" ]; then
    # Get the zettel ID from the directory name
    id=$dir


    ## Extract tags and store them in array
    # In this order: read the last line of the README.md file, remove " Tags" (in case there are no tags in this zettel), remove #s, capture each group of characters other than spaces ( \([^ ]\+\) ) and encase them with quotes, and replace spaces with commas.
    # Extract tags from the last line
    tags=$(tail -n 1 "$dir/README.md" |sed 's/ Tags//g' | sed 's/#//g' | sed 's/\([^ ]\+\)/"\1"/g' | sed 's/ /,/g')

    # Add zettel data to the array
    zettel_data="{\"id\": $id, \"tags\": [${tags[*]}]}"
    zettels+=("$zettel_data")
  fi
done

# Join the zettel data array elements with commas
IFS=, zettels_json="${zettels[*]}"

# Create the JSON output
json_output="{\"zettels\": [$zettels_json]}"

# Write the JSON output to a file
echo "$json_output" > zettels.json

echo "JSON data saved to zettels.json"

