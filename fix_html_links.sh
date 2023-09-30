#!/bin/bash

# Check if Pandoc is installed
if ! command -v pandoc &> /dev/null; then
  echo "Pandoc is not installed. Please install Pandoc before running this script."
  exit 1
fi

for dir in $(ls | grep -vE "\.sh$|\.md$|\.json$"); do
    echo $dir
    cd $dir
    # Convert Markdown to HTML
    pandoc "README.md" -o "index.html"
    
    if [ $? -eq 0 ]; then
      echo "Conversion successful. HTML file saved as index.html"
    else
      echo "Conversion failed at $dir."
      exit 1
    fi
    sed -n 's/…/.../p' index.html # fix elipsis 
    sed -n 's/—/-/p' index.html # fix dash
    cd ..
done


