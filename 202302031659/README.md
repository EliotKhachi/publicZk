# Compressing & Decompressing Files (tar, gzip, gunzip) 

In the linux command line...  

to compress a single file, you can use the `gzip` command:
`gzip test.txt`  

to decompress a file, use the `gunzip` command:  
`gunzip test.txt`  

to unzip a `.tar.gz` file, use the `tar` command:
`tar -xzvf documents.tar.gz`  

* x – instructs tar to extract the files from the zipped file  
* v – means verbose, or to list out the files it’s extracting  
* z – instructs tar to decompress the files – without this, you’d have a folder full of compressed files  
* f – tells tar the filename you want it to work on  

## Tags
#linux
