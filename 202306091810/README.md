# Adding Binaries to Path - Linux

Adding binaries to your path is useful for executing files regardless of the directory you are currently in.  

You have two options:  

1. Create a copy `cp` or a link `ln` in `/usr/bin`.  
`sudo cp ~/mypath/to/mybinary /usr/bin` or `sudo ln -s ~/mypath/to/mybinary /usr/bin/mybinary`
This works because `/usr/bin` is added to your system path by default.   

2. Add a separate path to your binary.  
In your ~/.bashrc...
`export PATH="$PATH:~/mypath/to/mybinary"`

## Tags
#linux
