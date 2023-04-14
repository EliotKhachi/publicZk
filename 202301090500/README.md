# Sed Command

`sed` is a linux command that stands for "stream editor". It is used to filter and transform text.   

## Examples
For the following examples, the `sed` command is operating on the `text.txt` file to either print its output or modify its contents.  

* `sed 's/find/replace/' text.txt` - prints the contents of `text.txt` except for every line in `text.txt`, the *first* instance of the string matching 'find' is replaced with "replace".   

* `sed 's/find/replace/g' text.txt` - prints the contents of `text.txt` except *all* instances of "find" on each line are replaced with "replace".   

* `sed 's/find/replace/' <oldfile >newfile` - modifies the output of `oldfile` such that the *first* instance of "find" on each line is replaced with "replace", and then writes that output to `newfile`.  

* `sed -i 's/find/replace/' text.txt` - re-write *in-place* such that the *first* instance of "find" on each line is replaced with "replace".  

* `sed -i '/Replace/s/the/THE/' text.txt`- for every line that contains "Replace", the first instance of "the" is replaced with "THE".  

* `sed -i '/line_pattern/d' text.txt` - every line that contains "line_pattern" is removed.  

* `sed -i -e 's/usr/u/g' -e 's/bin/b/g' text.txt` - *all* instances of "usr" are replaced with "u" **and** *all* instances of "bin" are replaced with "b".  

* `sed -i 's/ *$//' text.txt` - for every line, remove the spaces at the end of the line.  

* `sed -i 's/[[:space"]]*$//' text.txt` - for every line, remove the tabs at the end of the line.  

* `sed -i '/^$/d' text.txt` - delete every empty (^$) line.   

* `sed -i 's/[a-z]/\U&/g' text.txt` - make all letters a-z uppercase.  

* `sed -i 's/[A-Z]/\L&/g' text.txt` - make all letters A-Z lowercase.  

* `sed 11q text.txt` - print the first 11 lines.   

## Tags
#linux #commands
