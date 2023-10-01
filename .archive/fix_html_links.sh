#!/bin/bash
# Fix zettel links within html per website's zettel storage structure:
# zettelkasten/zettel-id.html
# (i.e. change zettel link from ../202210151824 to ./202210151824)
sed -i 's#<a href="\.\./\([0-9]\{12\}\)">#<a href="\./\1">#g' $output_file
