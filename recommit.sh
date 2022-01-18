#!bin/bash

for dir in */
do
	cd $dir
	title=$(cat README.md | egrep -E '^# .+')
	#cat README.md | egrep -E '^# .+'
	
	cd ..

done
