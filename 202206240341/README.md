# Common Linux Errors 

1. Disk Parition is Full - Find & Delete Huge Files  

        * du -sh * : Lists all the files/folders in the directory and how much disk space they are taking up.

        * rm -rf <filename> : Removes file or directory and all files in it.

2. Find File or Directory & Grep Error from log File
        * find /home -name filename : Searches from home (/home) directory and prints the directory that the file with the name (-name) "filename" is found in.
        * find /home -type d -name <directory> : Searches from home directory for a directory (type -d) with name (-name) "directory". Prints the directory that "directory" is found in.

        * grep error file : Grep error from "file"

3. Compare two files Content

4. Check CUP & RAM Usages "High Memory"

5. Debugging Network related issues
* `sudo lshw -class network`

6. ssh login related issues

7. Kill Process Forcefully

8. **The following packages have unmet dependencies: ... :Conflicts:... E:Broken packages**  
To resolve this error, try running:
```bash
	sudo apt --fix-broken install
	sudo apt-get update && sudo apt-get upgrade
	sudo dpkg --configure -a
	sudo apt-get install -f
```

## Tags
#hub #linux
