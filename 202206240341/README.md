# Common Linux Errors

1. **The following packages have unmet dependencies: ... :Conflicts:... E:Broken packages**  
To resolve this error, try running:
```bash
	sudo apt --fix-broken install
	sudo apt-get update && sudo apt-get upgrade
	sudo dpkg --configure -a
	sudo apt-get install -f
```

## Tags
#hub #linux
