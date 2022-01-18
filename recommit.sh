#!bin/bash
ZETDIR_PUBLIC="$ZETDIR_PUBLIC"_old
for dir in $(ls "$ZETDIR_PUBLIC" | grep -v '^.*.md$')
do
	readme="$dir/README.md"
	zet="$ZETDIR_PUBLIC/$readme"
	folder="$ZETDIR_PUBLIC/$dir"
	msg=$(cat $zet | head -n 1)
	cp -r $folder ./
	git add $readme
	git commit -m "${msg:2}"
done
git push

