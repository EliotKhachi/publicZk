# SSH into a Raspberry Pi 

## Set-up Pi For Headless Configuration

A headless configuration is one that doesn't require a separate keyboard or monitor connected to the raspberry pi. You can simply SSH into its shell from yours.  

1. [Install Raspian OS onto Raspberry Pi Using rpi-imager](../202307212120/README.md)
2. Find your raspberry pi's IP address (make sure it's powered on first)  
Option 1: `ping raspberrypi.local`  
Option 2: `nmap -sn 192.168.1.*`  
If you can't find a raspberry pi in this list you may need to connect the pi to your router via ethernet or configure its Wi-Fi manually. The latter is a pain. To later be able to connect via Wi-Fi, try running `sudo apt-get update && sudo apt-get dist-upgrade` to enable the onboard wireless LAN chip (this is the case with the RPi 3B+).  

4. Run `ssh username@ipaddress`, where username is what you selected in rpi-imager, and "ipaddress" is what you found using `nmap`  

## References
[How to find a Raspberry Pi on your network](https://kimondo.co.uk/find-raspberry-pi-network/)  

## Tags
#ssh #rpi
