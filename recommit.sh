#!bin/bash

for dir in */
do
	cd $dir
	title=$(cat README.md | egrep -E '^# .+')
	#cat README.md | egrep -E '^# .+'
	echo ${title:2}
	git commit -m "${title:2}"
	cd ..

done

