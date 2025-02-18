# Git Ignore File 

Before explaining the *.gitignore* file, it's imperative that you understand git sees every file in your working copy as one of three things.  
1. tracked - a file which as been previously staged or committed.  
2. untracked - a file which *has not* been staged or committed.  
3. ignored - a file which git has been explicitly told to ignore.  

## Examples of The *.gitignore* File
* dependency caches, i.e. /node\_modules or /packages  
* compiled code, such as .o, .pyc, and .class files, or similarly, build output directories, such as /bin, /out, or /target  
* files generated at runtime, such as .log, lock, or .tmp  
* hidden system files, such as .DS\_Store or Thumbs.db  
* personal IDE config files, such as .idea/workspace.xml

## Git ignore patterns
* \*\*/logs  
	* logs/debug.log  
	* logs/monday/foo.bar  
	* build/logs/debug.log  
* \*\*/logs/debug.log  
	* logs/debug.log  
	* build/logs/debug.log
	* *but not* logs/build/debug.log
* \*.log
	* debug.log  
	* foo.log  
	* .log  
	* logs/debug.log  
* \*.log !important.log  
	* debug.log  
	* important/trace.log  
	* *but not* important/debug.log  
 
## References
[Atlassian .gitignore Tutorial](https://www.atlassian.com/git/tutorials/saving-changes/gitignore)  

## Tags
#git #programming
