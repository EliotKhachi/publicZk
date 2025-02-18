# Enabling Wake-On-LAN 

## What is it
Wake-On-LAN (WoL) enables you to turn on your computer remotely whether it's hibernating, sleeping, or completely turned off by sending *magic packets* from another computer to the target machine's network device (Network Interface Controller [NIC]). 

## Setting up WoL on the Computer You Would Like to WoL
1. To enable Wake-On-LAN, you must first find out whether your computer's motherboard and your router supports it. You can do so by getting your motherboard and router's manufacturer and model and searching the web.  

2. **Enable WoL in BIOS**  
Next, boot into the BIOS of the computer that you'd like to WoL, and start searching around for power settings to enable Wake-On-LAN. Depending on the manufacturer and model, this may not be clear so do so more digging on your particular model. Examples of BIOS Settings for enabling WoL:  
* Activate Wake-On-LAN  
* Power on by PCI-E  

3. **Enable WoL in the NIC.**
**For Ubuntu (Linux)**
```
	sudo apt install hardinfo # install a tool that gives you info about your hardware  
	sudo apt-get install ethtool # install a tool that that gives you info about your network interfaces  
	hardinfo # run in a separate terminal instance or in a ALT-F2 command prompt. Navigate to Network Interfaces.
	sudo ethtool <interface_name> # print information about your network interfaces; you get these names from the hardinfo GUI. Look for the line "Supports Wake-on: ____". As long as one of the letters listed after the ':' is 'g', you can use magic packets for WoL.
	sudo ethtool -s <interface_name> wol g # enable WoL  
```

## How to Send WoL Magic Packets
Now that your standby computer is ready to be woken up, you need a way to send magic packets from your working computer.  
 

## References
[Lifewire - How to Set Up and Use Wake-on-LAN](https://www.lifewire.com/wake-on-lan-4149800)

## Tags
#networks
