# Sed Command

`sed` is a linux command that stands for "stream editor". It is used to filter and transform text.   

## Examples
* `sed 's/find/replace/' text.txt` - prints the contents of `text.txt` except the *first* instances of "find" on each line is replaced with "replace".   

* `sed 's/find/replace/g' text.txt` - prints the contents of `text.txt` except the *all* instances of "find" on each line are replaced with "replace".   

* `sed 's/find/replace/' <oldfile >newfile` - modifies the output of `oldfile` such that the *first* instance of "find" on each line is replaced with "replace", and then writes that output to `newfile`.  

* `sed -i 's/find/replace/' text.txt - re-writes `text.txt` *in-place* such that the *first* instance of "find" on each line is replaced with "replace".  

* `sed '/Replace/s/the/THE/' text.txt` - prints the contents of `text.txt` except for every line that contains "Replace", the first instance of "the" is replaced with "THE".  

* `sed '/line_pattern/d' text.txt` - prints the contents of `text.txt` except every line that contains "line_pattern" is removed.  

* `sed -e 's/usr/u/g' -e 's/bin/b/g' text.txt` - prints the contents of `text.txt` except *all* instances of "usr" are replaced with "u" **and** *all* instances of "bin" are replaced with "b".  

## Tags
#linux
