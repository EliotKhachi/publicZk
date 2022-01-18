#!bin/bash
for dir in $(ls "$ZETDIR_PUBLIC" | grep -v '^.*.md$')
do
	readme="$dir/README.md"
	zet="$ZETDIR_PUBLIC/$readme"
	folder="$ZETDIR_PUBLIC/$dir"
	msg=$(cat $zet | head -n 1)
	cp $folder ./

done
