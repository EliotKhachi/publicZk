#!/bin/bash
# Fix zettel links within html per website's zettel storage structure:
# zettelkasten/zettel-id.html
# (i.e. change zettel link from ../202210151824 to ./202210151824)
cd $REPOS/eliotkhachi.dev/zettelkasten
for file in $(ls grep *.html); do
    # echo $file
    sed -i 's#<a href="\.\./\([0-9]\{12\}\)\/zettel.html">#<a href="\1.html">#g' $file
done
