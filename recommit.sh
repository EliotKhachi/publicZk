#!bin/bash

for dir in */
do
	title=$(cat $dir\README.md | egrep -E '^# .+')
	echo ${title:2}
	git commit -m "${title:2}"
	git push

done

