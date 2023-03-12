# How to Install Deb Files on Ubuntu

## TLDR
`sudo apt install ./example.deb`

You generally install software on Ubuntu in one of two ways:
1. From the command line with the `apt` and `apt-get` utilities (apt being the default Ubuntu package manager).  
2. From the Ubuntu Software Center (self-explanatory)


## Downloading the .deb file through the command line
1. `wget --no-check-certificate [https://.../.deb]`
* `--no-check-certificate` skips the SSL handshake. Default action: compare the server certificate to the certificate authorities.

2. `curl -k -O - L [https://.../.deb]`
* `-k` denotes "insecure". Default action: verify that the connection is secure.  
* `-O` tells curl to save the data to a local file. Default action: write the received data to stdout.  
* `-L` re-routes curl to the newest location if the requested webpage has moved. 

# References
[How to Install Deb Files on Ubuntu](https://linuxize.com/post/how-to-install-deb-packages-on-ubuntu/)

## Tags
#linux
