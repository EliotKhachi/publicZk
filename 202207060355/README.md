# Wake On Lan Using Raspberry Pi

## Prerequisites  
1. Your computer's motherboard must be capable of WOL.  
*Go to your motherboard manufacturer's website and check its capabilities. Then go into your computer's BIOS and make sure WOL is enabled.* [Asus Motherboard How to set and enable WOL function in BIOS](https://www.asus.com/global/support/FAQ/1045950/)  

2. Your computer  must have a network adapter that is capable of WOL. It doesn't matter whether it is wireless or ethernet.  
*Do* `sudo apt-get install ethtools` *and run* `ip addr`*. Identify the network adapter you intend to use for WOL. With that identified, do sudo ethtool <interface-name> to list its properties. See the "Supports Wake-On:" and "Wake-On:" lines. Do* `sudo ethtool -s enp5s0 wol g` *to enable WOL; the line should say "Wake-On: g" now. If not, you must use another network interface.*  

## Networking/Hardware Prerequisites
In order to Wake On Lan (WOL) a computer using a Raspberry Pi, the Pi must always be on and connected to your computer via ethernet. You can do this by powering the pi from your PC's USB port, and keeping your USB port powered even when your computer is off.  


For local WOL capabilities, you need to be able to SSH into the raspberry pi from the local network --> [202206170251](../202206170251) - SSH into a Raspberry Pi <-- *(For the RPI 3B+, and perhaps other models, you must first SSH via ethernet and run `sudo apt-get update && `sudo apt-get dist-upgrade` to enable the onboard wireless LAN chip* [MagPi RPi 3B+ Specs and Benchmarks](https://magpi.raspberrypi.com/articles/raspberry-pi-3bplus-specs-benchmarks)  

For WAN (World Area Network) WOL capabilities, you must port forward your Pi to the internet --> [202207030601](../202207030601) - Port Forwarding to the Internet <--  

## Steps
1. Get the mac address of the network interface you can WOL from.
`ip addr` *to list the network interfaces again and see the mac address (AA:BB:CC:DD:EE:FF).*  

2. On your raspberry pi, run `sudo apt-get install etherwake`. To wake up a PC simply do `sudo etherwake AA:BB:CC:DD:EE:FF`. Where AA:BB:CC:DD:EE:FF is the MAC address of the network interface you are using to wake up the PC.  

## References
[1] [LinuxConfig.org - Introduction to Wake On Lan](https://linuxconfig.org/introduction-to-wake-on-lan)  
[2] [LinuxConfig.org - udev Rules Tutorial](https://linuxconfig.org/tutorial-on-how-to-write-basic-udev-rules-in-linux)  

# Tags
#linux #networks #rpi
