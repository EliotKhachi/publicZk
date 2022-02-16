# WSL2: Getting Started on Windows 10

1. Make sure to have Windows 10 updated to atleast Version 2004 (OS build 19041.264).  

2. Type Windows Features on the search bar and make sure the *Windows Subsystem for Linux* AND *Virtual Machine Platform* are turned on.  

3. Restart your computer.  

4. Go to Windows Store and install Ubuntu 20.04 LTS.  

5. Download and install the latest WSL2 Linux kernel packge for x64 machine.  

6. Run Powershell

7. Configure WSL versions
	* Check currently running and stopped versions `wsl -l -v`
	* Set version `wsl --set-version Ubuntu-20.04 2` or `wsl --set-version Ubuntu-20.04 1`  
	* Set default version `wsl --set-default-version 2'  


## Tags
#WSL
