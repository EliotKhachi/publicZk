#!bin/bash
ZETDIR="$ZETDIR"_old
for dir in $(ls "$ZETDIR" | grep -v '^.*.md$')
do
	readme="$dir/README.md"
	zet="$ZETDIR/$readme"
	folder="$ZETDIR/$dir"
	msg=$(cat $zet | head -n 1)
	cp -r $folder ./
	git add $readme
	git commit -m "${msg:2}"
done
git push

