# Sed Command

`sed` is a linux command that stands for "stream editor". It is used to filter and transform text.   

## Examples
* `sed 's/find/replace/' text.txt` - prints the contents of text.txt except the *first* instances of "find" on each line is replaced with "replace".   

* `sed 's/find/replace/g' text.txt` - prints the contents of text.txt except the *all* instances of "find" on each line are replaced with "replace".   

* `sed 's/find/replace/' <oldfile >newfile` - modifies the output of `oldfile` such that the *first* instance of "find" on each line is replaced with "replace", and then writes that output to `newfile`.  

* `sed -i 's/find/replace/' text.txt - re-writes `text.txt` *in-place* such that the *first* instance of "find" on each line is replaced with "replace".  



## Tags
#linux
