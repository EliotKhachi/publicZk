# SSH into a Raspberry Pi

## Monitor and Keyboard
You can SSH into a Raspberry Pi with a monitor and keyboard by following instructions here [202205131908](../202205131908) - SSH into Another Machine  
---
**The Problem**  
The problem with this method is that most home networks use *DHCP* (dynamic host configuration protocol), where local IP addresses are temporarily assigned to the computers by your router. Once the Pi's IP address changes, you've lost the ability to SSH into it and would have to use a monitor and keyboard again.

## Headless Configuration
1. First, insert your microSD card into your computer or laptop, using an adapter such as USB if necessary.  

2. Next, `sudo apt install rpi-imager` and launch the application using by typing `rpi-imager`.  
	* Select your OS of choice (Raspberry OS Lite is a good choice to stay lightweght since no desktop environment is needed for a headless setup)  
	* Select your microSD card to write the OS image onto.  
	* Click on cog for advanced settings  
		- Select a username and password
		- Enable SSH through public key authentication (automatically pastes in id_rsa.pub from the computer you're currently using)  
		- Select Wireless LAN Network and enter password
	* Write image

3. Eject microSD card and enter it into the raspberry pi. Connect the raspberry pi to power.  

4. Run `nmap -sP 192.168.1.*` and find your raspberry pi's IP address  

5. If you can't find a raspberry pi in this list you may need to connect the pi to your router via ethernet or configure its Wi-Fi manually. The latter is a pain. To later be able to connect via Wi-Fi, try running `sudo apt-get update && sudo apt-get dist-upgrade` to enable the onboard wireless LAN chip (this is the case with the RPi 3B+).  

5. Run `ssh pi@ipaddress`, replacing "pi" with the pi's username you selected in rpi-imager, and "ipaddress" with the IP address you found using `nmap`  

## References
[How to find a Raspberry Pi on your network](https://kimondo.co.uk/find-raspberry-pi-network/)  

## Tags
#dev #ssh
