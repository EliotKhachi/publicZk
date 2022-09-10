# SSH into a Raspberry Pi

## Set-up Pi For Headless Configuration

A headless configuration is one that doesn't require a separate keyboard or monitor connected to the raspberry pi. You can simply SSH into its shell from yours.  

1. First, insert your microSD card into your computer.   

2. Next, `sudo apt install rpi-imager` and launch the application using by typing `rpi-imager`.  
	* Select your OS of choice (Raspberry OS Lite is a good choice to stay lightweght since no desktop environment is needed for a headless setup)  
	* Select your microSD card to write the OS image onto.  
	* Click on cog for advanced settings  
		- Select a username and password
		- Enable SSH through public key authentication. This automatically pastes the id_rsa.pub of your computer to the pi's `authorized_keys` file) 
		- Select Wireless LAN Network and enter password
	* Write image

3. Eject microSD card and enter it into the raspberry pi. Connect the raspberry pi to power.  

4. Run `nmap -sP 192.168.1.*` and find your raspberry pi's IP address  

5. If you can't find a raspberry pi in this list you may need to connect the pi to your router via ethernet or configure its Wi-Fi manually. The latter is a pain. To later be able to connect via Wi-Fi, try running `sudo apt-get update && sudo apt-get dist-upgrade` to enable the onboard wireless LAN chip (this is the case with the RPi 3B+).  

5. Run `ssh pi@ipaddress`, replacing "pi" with the pi's username you selected in rpi-imager, and "ipaddress" with the IP address you found using `nmap`  

## References
[How to find a Raspberry Pi on your network](https://kimondo.co.uk/find-raspberry-pi-network/)  

## Tags
#dev #ssh #rpi
