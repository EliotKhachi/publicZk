#!/bin/bash
ZETDIR="$ZETDIR"
TARGETDIR="$REPOS/eliotkhachi.dev/zettelkasten"

## Check if pandoc is installed
if ! command -v pandoc &>/dev/null; then
  echo "Error: pandoc is not installed. run \`sudo apt install pandoc\` before running this script."
  exit 1
fi

cd $ZETDIR
## loop through each directory
for dir in $(ls); do 
    if [ -d "$dir" ]; then
        # Store Markdown file location
        input_file="$dir/README.md"
        
        # Check if the the file exists
        if [ ! -f "$input_file" ]; then
          echo "Error: The input file '$input_file' does not exist."
          exit 1
        fi
        
        # Get title 
        title=$(head -n 1 "$input_file" | sed -n 's/^# //p')
        
        # Store HTML file in current directory 
        output_file="$TARGETDIR/$dir.html"

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
    fi
done
