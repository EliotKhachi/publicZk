# Regex and Sed Essentials

Here are two essential regex and sed concepts:

1. `.*` -  matches zero or more occurences of any character. The `.` is the wildcard indicating any character, while the `*` specifies zero or more occurrences (applies to the character preceding it).  

2. `\(.*\)` - matches zero or more occurences of any character, *and* captures it. This is how you specify a capturing group. You can specify any regex pattern inside, in this case we are matching zero or more occurrences of any character. You can later reference the "captured" text with `\1` for the first capturing group, `\2` for the second capturing group (if there is one), and so on.
    * For example, in `sed 's/.*A\(.*\)$/\1/' inputfile`, the regular expression pattern `.*A\(.*\)$` specifies that the target text must start from the last occurrence of the letter "A": `.*A`, followed by a capturing group that matches the rest of the line: `\(.*\)$`. The replacement text `\1` refers to the contents of the capturing group, which is the portion of the line that starts from the last occurrence of "A" and goes to the end of the line. 

## Tags
#linux #bash #commands
