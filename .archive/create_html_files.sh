#!/bin/bash
ZETDIR="$ZETDIR"

if ! command -v pandoc &>/dev/null; then
  echo "Error: pandoc is not installed. Please install pandoc before running this script."
  exit 1
fi

for dir in $(ls | grep -Ev '.md$|.json$|.css$|.html$|.sh$'); do
    cd $dir
    # Input Markdown file
    input_file="README.md"
    
    # Check if the input file exists
    if [ ! -f "$input_file" ]; then
      echo "Error: The input file '$input_file' does not exist."
      exit 1
    fi
    
    title=$(head -n 1 "$input_file" | sed -n 's/^# //p')
    
    # Store HTML file in current directory 
    output_file="zettel.html"

    # Convert Markdown to HTML using pandoc
    pandoc -f gfm "$input_file" -o "$output_file" --template="$ZETDIR/custom_template.html" --metadata title="$title"
    
    # Check if the conversion was successful
    if [ $? -eq 0 ]; then
      echo "Conversion successful. HTML file saved as $output_file"
    else
      echo "Error: HTML Conversion failed."
    fi

    # Fix zettel links in html files per website's zettel storage structure:
    # zettelkasten/zettel-id.html
    sed -i 's#<a href="\.\./\([0-9]\{12\}\)">#<a href="\../\1/zettel.html">#g' $output_file
    sed -i 's#<a href="\./\([0-9]\{12\}\)">#<a href="\../\1/zettel.html">#g' $output_file

    cd ..
done
